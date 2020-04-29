//
//  AppRootHelper.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/29/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

struct AppRootHelper {
    static var window: UIWindow? {
        get {
            if #available(iOS 13, *) {
                return SceneDelegate.shared.window
            } else {
                return AppDelegate.shared.window
            }
        }
        
        set {
            if #available(iOS 13, *) {
                SceneDelegate.shared.window = newValue
            } else {
                AppDelegate.shared.window = newValue
            }
        }
    }
}
