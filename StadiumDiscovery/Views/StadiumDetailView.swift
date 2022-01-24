//
//  StadiumDetailView.swift
//  StadiumDiscovery
//
//  Created by Arman Zadeh-Attar on 2022-01-04.
//

import SwiftUI
import MapKit

struct StadiumDetailView: View {
    
    @EnvironmentObject private var vm: StadiumViewModel
    let stadium: Stadium
    
    var body: some View {
        ScrollView {
            VStack{
             imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack (alignment: .leading, spacing: 16){
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }.ignoresSafeArea()
            .background(.ultraThinMaterial)
            .overlay(alignment: .topLeading) {
                backButton
            }
    }
}

struct StadiumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StadiumDetailView(stadium: StadiumsDataService.stadiums.first!)
            .environmentObject(StadiumViewModel())
    }
}

extension StadiumDetailView {
    
    private var imageSection: some View {
    TabView {
        ForEach(stadium.imageNames, id: \.self) {
            Image($0)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .clipped()
        }
    }
    .frame(height: 500)
    .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(stadium.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(stadium.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(stadium.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            if let url = URL(string: stadium.link) {
            Link("Read more on Wikipedia", destination: url)
                    .font(.headline)
                    .tint(.blue)
            }
        }
    }
    
    private var mapLayer: some View{
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: stadium.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [stadium]) { stadium in
            MapAnnotation(coordinate: stadium.coordinates) {
                StadiumMapAnnotationView()
                    .shadow(radius: 10)
            }
        }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
    
    private var backButton: some View {
        Button {
            vm.sheetStadium = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }

    }
}
