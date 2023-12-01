//
//  Attraction.swift
//  Guidebook
//
//  Created by Omer Cagri Sayir on 1.12.2023.
//

import Foundation

struct Attraction: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String // Direction
    
}
