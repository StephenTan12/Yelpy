//
//  RestaurantModel.swift
//  Yelpy
//
//  Created by Stephen Tan on 2/18/21.
//  Copyright © 2021 StevesBest. All rights reserved.
//

import Foundation

struct Restaurant: Codable {
    let categories: [[String: String]]
    let image_url: String
    let name: String
    let rating: Double
    
    enum CodingKeys: String, CodingKey {
        case categories
        case image_url
        case name
        case rating
    }
}
