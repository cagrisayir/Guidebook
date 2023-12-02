//
//  AttractionView.swift
//  Guidebook
//
//  Created by Omer Cagri Sayir on 1.12.2023.
//

import SwiftUI

struct AttractionView: View {
    var city: City

    var body: some View {
        ScrollView{
            NavigationStack {
                VStack {
                    ForEach (city.attractions) { attraction in
                        NavigationLink {
                            DetailView(attraction: attraction)
                        } label: {
                            AttractionRow(attraction: attraction)
                                .padding(.bottom, 50)
                        }
                        .buttonStyle(.plain)

                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    AttractionView(city: City(name: "London",
                              summary: "London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times.",
                              imageName: "london",
                              attractions: [
                                  Attraction(name: "Buckingham Palace",
                                             summary: "Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.",
                                             longDescription: """
                                             Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.
                                            """,
                                             imageName: "buckingham", latLong: "51.50148418749087, -0.1410746109020975"),
                              ]))
}
