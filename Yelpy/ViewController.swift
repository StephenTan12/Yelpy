//
//  ViewController.swift
//  Yelpy
//
//  Created by Stephen Tan on 2/18/21.
//  Copyright © 2021 StevesBest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Yelpy"
    }


}

