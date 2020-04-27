//
//  CreateAccountCoordinator.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/27/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

class CreateAccountCoordinator: Coordinator {
    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinator = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
