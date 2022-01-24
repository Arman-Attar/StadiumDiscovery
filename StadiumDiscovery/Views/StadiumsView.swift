//
//  StadiumsView.swift
//  StadiumDiscovery
//
//  Created by Arman Zadeh-Attar on 2021-12-28.
//

import SwiftUI
import MapKit

struct StadiumsView: View {
    
    @EnvironmentObject private var vm: StadiumViewModel
    
    var body: some View {
        ZStack{
           mapLayer
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                header
                    .padding()
                Spacer()
             stadiumsPreviewStack
            }
        }
        .sheet(item: $vm.sheetStadium,
               onDismiss: nil) { stadium in
            StadiumDetailView(stadium: stadium)
        }
    }
}

struct StadiumsView_Previews: PreviewProvider {
    static var previews: some View {
        StadiumsView()
            .environmentObject(StadiumViewModel())
    }
}

extension StadiumsView {
    
    private var header: some View {
        VStack {
            Button {
                vm.toggleStadiumList()
            } label: {
                Text(vm.mapLocation.name)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading) {
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showStadiumList ? 180 : 0))
                    }
            }

            if vm.showStadiumList{
            StadiumListView()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20)
    }
    
    private var mapLayer: some View{
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.stadiums,
            annotationContent: { stadium in
            MapAnnotation(coordinate: stadium.coordinates) {
                StadiumMapAnnotationView()
                    .scaleEffect(vm.mapLocation == stadium ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextStadium(stadium: stadium)
                    }
            }
        })
    }
    
    private var stadiumsPreviewStack: some View {
        ZStack{
            ForEach(vm.stadiums) { stadium in
                if vm.mapLocation == stadium{
                StadiumPreviewView(stadium: stadium)
                    .shadow(color: Color.black.opacity(0.3), radius: 20)
                    .padding()
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                }
            }
        }
    }
}
