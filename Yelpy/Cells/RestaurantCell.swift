//
//  RestaurantCell.swift
//  Yelpy
//
//  Created by Stephen Tan on 2/18/21.
//  Copyright © 2021 StevesBest. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {
    var restaurant: Restaurant! {
        didSet {
            label.text = restaurant.name
        }
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left

        return label
    }()
    
    let restaurantImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false

        return image
    }()
    
    func addLabel() {
        addSubview(label)
        addSubview(restaurantImage)
        
        NSLayoutConstraint.activate([
            label.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.7),
            label.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addLabel()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
