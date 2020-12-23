//
//  Location.swift
//  Treker
//
//  Created by knight on 12/22/20.
//

import Foundation


struct Location: Decodable, Identifiable{
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    
    static var example = Location(id: 1, name: "Great Smokey Mountain", country: "United State of America", description: "Description goes here", more: "More content goes here", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of the bears!")
 
}
