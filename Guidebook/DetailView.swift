//
//  DetailView.swift
//  Guidebook
//
//  Created by Omer Cagri Sayir on 1.12.2023.
//

import SwiftUI

struct DetailView: View {
    var attraction: Attraction
    var body: some View {
        ScrollView{
            Image(attraction.imageName).resizable().aspectRatio(contentMode: .fill)
            Text(attraction.name).font(.largeTitle)
            Text(attraction.longDescription)
            Spacer()
            Text(attraction.latLong)
        }
    }
}

#Preview {
    DetailView(attraction: Attraction(name: "Buckingham Palace",
                          summary: "Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.",
                          longDescription: """
                          Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster
                          """,
                          imageName: "buckingham", latLong: "51.50148418749087, -0.1410746109020975"))
}
