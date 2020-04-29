//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Julio Collado on 4/27/20.
//  Copyright © 2020 julio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var switchInterfaceStyleLabel: UILabel!
    @IBOutlet weak var interfaceStyleSwitch: UISwitch!
    @IBOutlet weak var productSegment: UISegmentedControl!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var selectProductLabel: UILabel!
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUIElements()
        
    }
    
    private func setupButtons() {
        let titleColor = UIColor(light: .white, dark: Constant.Color.customizeBlue)
        buyButton.setTitleColor(titleColor, for: .normal)
        createAccountButton.setTitleColor(titleColor, for: .normal)
        
        let backgroundColor = UIColor(light: Constant.Color.customizeBlue, dark: .white)
        buyButton.backgroundColor = backgroundColor
        createAccountButton.backgroundColor = backgroundColor
    }
    
    private func setupSelectProductLabel() {
        let labelsColor = UIColor(light: Constant.Color.customizeBlue, dark: .white)
        selectProductLabel.textColor = labelsColor
        switchInterfaceStyleLabel.textColor = labelsColor
    }
    
    private func setupSwitch() {
        if #available(iOS 13.0, *) {
            interfaceStyleSwitch.isOn = overrideUserInterfaceStyle == .dark || overrideUserInterfaceStyle == .unspecified ? true : false
            interfaceStyleSwitch.isEnabled = true
        } else {
            interfaceStyleSwitch.isEnabled = false
            interfaceStyleSwitch.alpha = 0.5
        }
    }
    
    func setupUIElements() {
        let background = UIColor(light: .white, dark: Constant.Color.customizeBlue)
        view.backgroundColor = background
        setupButtons()
        setupSelectProductLabel()
        setupSwitch()
    }
    
    @IBAction func didTapBuyButton(_ sender: UIButton) {
        coordinator?.buySubscription(to: productSegment.selectedSegmentIndex)
    }
    
    @IBAction func didToggleInterfaceStyle(_ sender: UISwitch) {
        if #available(iOS 13.0, *) {
            switch AppRootHelper.window?.overrideUserInterfaceStyle {
            case .dark, .unspecified:
                AppRootHelper.window?.overrideUserInterfaceStyle = .light
            default:
                AppRootHelper.window?.overrideUserInterfaceStyle = .dark
            }
        }
    }
    
    @IBAction func didTapCreateAccountButton(_ sender: UIButton) {
        coordinator?.createAccount()
    }
    
}

