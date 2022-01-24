//
//  StadiumViewModel.swift
//  StadiumDiscovery
//
//  Created by Arman Zadeh-Attar on 2021-12-28.
//

import Foundation
import MapKit
import SwiftUI

class StadiumViewModel: ObservableObject {
    
    // All loaded stadiums
    @Published var stadiums: [Stadium]
    
    // Current stadium on map
    @Published var mapLocation: Stadium {
        didSet{
        updateMapRegion(stadium: mapLocation)
        }
    }
    
    // Current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Show list of stadiums
    @Published var showStadiumList: Bool = false
    
    // Show stadium detail via sheet
    @Published var sheetStadium: Stadium? = nil
    
    init(){
        let stadiums = StadiumsDataService.stadiums
        self.stadiums = stadiums
        self.mapLocation = stadiums.first!
        
        self.updateMapRegion(stadium: stadiums.first!)
    }
    
    private func updateMapRegion(stadium: Stadium) {
        withAnimation(.easeInOut){
            mapRegion = MKCoordinateRegion(center: stadium.coordinates, span: mapSpan)
        }
    }
    
    func toggleStadiumList() {
        withAnimation(.easeInOut) {
            showStadiumList.toggle()
        }
        
    }
    
    func showNextStadium(stadium: Stadium) {
        withAnimation(.easeInOut) {
            mapLocation = stadium
            showStadiumList = false
        }
    }
    
    func nextButtonPressed() {
        // get the current index
        guard let currentIndex = stadiums.firstIndex(where: {$0 == mapLocation}) else {
            print("Could not find current index in locations array")
            return
        }
        
        //check if current index is valid
        let nextIndex = currentIndex + 1
        guard stadiums.indices.contains(nextIndex) else {
            // next index is not valid, going back to 0
            guard let firstStadium = stadiums.first else { return }
            showNextStadium(stadium: firstStadium)
            return
        }
        
        let nextStadium = stadiums[nextIndex]
        showNextStadium(stadium: nextStadium)
    }
    
}
