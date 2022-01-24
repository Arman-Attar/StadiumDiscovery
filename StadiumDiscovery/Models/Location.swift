//
//  Location.swift
//  StadiumDiscovery
//
//  Created by Arman Zadeh-Attar on 2021-12-28.
//

import Foundation
import CoreLocation

struct Stadium: Identifiable, Equatable {
    
    let name: String
    let cityName:String
    let coordinates:CLLocationCoordinate2D
    let description:String
    let imageNames: [String]
    let link:String
    
    var id: String {
        name + cityName
    }
    
    static func == (lhs: Stadium, rhs: Stadium) -> Bool {
        lhs.id == rhs.id
    }
}
