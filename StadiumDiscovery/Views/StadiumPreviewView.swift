//
//  StadiumPreviewView.swift
//  StadiumDiscovery
//
//  Created by Arman Zadeh-Attar on 2022-01-03.
//

import SwiftUI

struct StadiumPreviewView: View {
    
    
    @EnvironmentObject private var vm: StadiumViewModel
    let stadium: Stadium
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16.0) {
                imageSection
                titleSection
            }
            
            VStack (spacing: 8){
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
        
    }
}

struct StadiumPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            StadiumPreviewView(stadium: StadiumsDataService.stadiums.first!)
                .padding()
        }
        .environmentObject(StadiumViewModel())
    }
}


extension StadiumPreviewView {
    
    private var imageSection: some View {
        ZStack{
            if let imageName = stadium.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
     
    private var titleSection: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(stadium.name)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(stadium.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button {
            vm.sheetStadium = stadium
        } label: {
            Text("Learn more")
                .font(.headline)
                .frame(width: 125, height: 30)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var nextButton: some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 30)
        }
        .buttonStyle(.bordered)
    }
}
