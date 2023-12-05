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
        NavigationStack {
            ScrollView (showsIndicators: false){
                VStack {
                    ForEach(cities) { city in
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .ignoresSafeArea()
            .onAppear {
//                cities = dataService.getData()
                cities = dataService.getFileData()
            }
        }
    }
}

#Preview {
    CityView()
}
