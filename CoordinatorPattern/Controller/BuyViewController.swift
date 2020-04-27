//
//  BuyViewController.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/27/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded, Coordinable {
    
    @IBOutlet weak var buyProductLabel: UILabel!
    
    weak var coordinator: Coordinator?
    
    var selectedProduct = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        buyProductLabel.text = "Buy product: \(selectedProduct)"
    }
    
}
