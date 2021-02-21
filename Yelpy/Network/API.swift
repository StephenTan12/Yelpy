//
//  API.swift
//  Yelpy
//
//  Created by Stephen Tan on 2/18/21.
//  Copyright © 2021 StevesBest. All rights reserved.
//

import Foundation

struct API {
    static func getRestaurants(completion: @escaping ([Restaurant]?) -> ()) {
        let apiKey = "J8_J4QiFJ4lTqah14CxdB-htRguoz0m9_qwx9CdPeXTMXheEHRXjwQJMf7FoKALSiKUA9tXIjOXJS7oOgJGR8UnTmLe7-w8om4sg_5YYN8nmxH2M7zx-zEBVVdUxYHYx"
        
        let lat = 37.773972
        let long = -122.431297
        
        guard let url = URL(string: "https://api.yelp.com/v3/transactions/delivery/search?latitude=\(lat)&longitude=\(long)") else {return}
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            if let data = data {
                let restaurants = try! JSONDecoder().decode(RestaurantResponse.self, from: data)
                completion(restaurants.businesses)
            }
        }
        
        task.resume()
    }
}
