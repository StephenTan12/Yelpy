//
//  RestaurantModel.swift
//  Yelpy
//
//  Created by Stephen Tan on 2/18/21.
//  Copyright © 2021 StevesBest. All rights reserved.
//

import Foundation

struct Restaurant {
    var name: String?
    var address: String?
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}
