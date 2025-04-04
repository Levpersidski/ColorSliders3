//
//  MainViewController.swift
//  ColorSliders3
//
//  Created by SWIFT on 02.04.2025.
//

import UIKit

protocol ColorSettingsViewControllerDelegate: AnyObject {
    func getRGBColor (red:CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
}

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? ColorSettingsViewController
            settingsVC?.delegate = self
    }
}

extension MainViewController: ColorSettingsViewControllerDelegate {
    func getRGBColor(red: CGFloat, green: CGFloat, blue: CGFloat , alpha: CGFloat ) {
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        print("MainVC - Red: \(red), Green: \(green), Blue: \(blue)")

    }
}
