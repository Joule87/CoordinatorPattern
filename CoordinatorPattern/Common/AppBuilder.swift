//
//  AppBuilder.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/28/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

class AppBuilder {
    
    private var coordinator: MainCoordinator?
    
    static let shared = AppBuilder()
    
    private init() {
        let navController = UINavigationController()
        coordinator = MainCoordinator(navigationController: navController)
        coordinator?.start()
    }
    
    func initialize(window: UIWindow?) {
        window?.rootViewController = coordinator?.navigationController
        window?.makeKeyAndVisible()
    }
}
