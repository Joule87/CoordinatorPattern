//
//  SceneDelegateExtension.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/29/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
extension SceneDelegate {
    static var shared: SceneDelegate {
         return UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
    }
}
