//
//  StadiumDiscoveryApp.swift
//  StadiumDiscovery
//
//  Created by Arman Zadeh-Attar on 2021-12-28.
//

import SwiftUI

@main
struct StadiumDiscoveryApp: App {
    
    @StateObject private var vm = StadiumViewModel()
    
    var body: some Scene {
        WindowGroup {
            StadiumsView()
                .environmentObject(vm)
        }
    }
}
