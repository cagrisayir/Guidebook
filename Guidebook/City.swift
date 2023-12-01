//
//  City.swift
//  Guidebook
//
//  Created by Omer Cagri Sayir on 1.12.2023.
//

import Foundation

struct City: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
    
}
