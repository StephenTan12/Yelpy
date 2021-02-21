//
//  RestaurantResponse.swift
//  Yelpy
//
//  Created by Stephen Tan on 2/20/21.
//  Copyright © 2021 StevesBest. All rights reserved.
//

import Foundation

struct RestaurantResponse: Codable {
    let total: Int
    let businesses: [Restaurant]
}
