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
            label.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor, constant: 10),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            restaurantImage.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor, constant: 10),
            restaurantImage.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor, constant: -10),
            restaurantImage.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor, constant: -10),
            restaurantImage.leadingAnchor.constraint(equalTo: label.leadingAnchor, constant: 60)
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
