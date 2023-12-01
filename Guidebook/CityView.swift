//
//  ContentView.swift
//  Guidebook
//
//  Created by Omer Cagri Sayir on 1.12.2023.
//

import SwiftUI

struct CityView: View {
    @State var cities: [City] = [City]()
    var dataService = DataService()

    var body: some View {
        ScrollView {
            VStack {
                ForEach(cities) { city in
                    Text(city.name)
                }
            }
            .padding().onAppear {
                cities = dataService.getData()
            }
        }
    }
}

#Preview {
    CityView()
}
