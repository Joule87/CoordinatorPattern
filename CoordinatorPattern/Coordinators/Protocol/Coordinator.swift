//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/27/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
