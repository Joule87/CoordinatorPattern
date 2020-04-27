//
//  Coordinable.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/27/20.
//  Copyright © 2020 julio. All rights reserved.
//

import Foundation

protocol Coordinable {
    var coordinator: Coordinator? { get set }
}
