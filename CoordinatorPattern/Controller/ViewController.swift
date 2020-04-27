//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/27/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    @IBOutlet weak var productSegment: UISegmentedControl!
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTapBuyButton(_ sender: UIButton) {
        coordinator?.buySubscription(to: productSegment.selectedSegmentIndex)
    }
    
    @IBAction func didTapCreateAccountButton(_ sender: UIButton) {
        coordinator?.createAccount()
    }
    
}

