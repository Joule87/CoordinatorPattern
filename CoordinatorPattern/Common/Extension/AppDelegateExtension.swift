//
//  AppDelegateExtension.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/29/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

extension AppDelegate {
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
