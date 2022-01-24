//
//  StadiumListView.swift
//  StadiumDiscovery
//
//  Created by Arman Zadeh-Attar on 2021-12-29.
//

import SwiftUI

struct StadiumListView: View {
    
    @EnvironmentObject private var vm: StadiumViewModel
    
    var body: some View {
        List{
            ForEach(vm.stadiums) { stadium in
                Button {
                    vm.showNextStadium(stadium: stadium)
                } label: {
                    stadiumRowView(stadium: stadium)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)
            }
        }
        .listStyle(PlainListStyle())
    }
}

struct StadiumListView_Previews: PreviewProvider {
    static var previews: some View {
        StadiumListView()
            .environmentObject(StadiumViewModel())
    }
}

extension StadiumListView {
    
    private func stadiumRowView(stadium: Stadium) -> some View {
        HStack {
            if let imageName = stadium.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading) {
                Text(stadium.name)
                    .font(.headline)
                Text(stadium.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
