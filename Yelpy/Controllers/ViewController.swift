//
//  ViewController.swift
//  Yelpy
//
//  Created by Stephen Tan on 2/18/21.
//  Copyright © 2021 StevesBest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tableView: UITableView!
    var restaurantsArray = [Restaurant]()

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        tableView = UITableView()
        tableView.rowHeight = 150
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Yelpy"
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(RestaurantCell.self, forCellReuseIdentifier: "restaurant")
        
        restaurantsArray.append(Restaurant.init(name: "name", address: "wow"))
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurant", for: indexPath) as! RestaurantCell
        let restaurant = restaurantsArray[indexPath.row]
        
        cell.restaurant = restaurant
        return cell
    }
    
}
