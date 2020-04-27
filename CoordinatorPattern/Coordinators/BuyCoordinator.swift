//
//  BuyCoordinator.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/27/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinator = [Coordinator]()
    var navigationController: UINavigationController
    
    var selectedProduct = 0
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.selectedProduct = selectedProduct
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
}
