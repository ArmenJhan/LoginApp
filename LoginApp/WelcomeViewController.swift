//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Armen Madoyan on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    private let firstColor = UIColor(
        red: 210/255,
        green: 110/255,
        blue: 128/255,
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: 110/255,
        green: 150/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient(topColor: firstColor, bottomColor: secondColor)
        welcomeLabel.text = "Welcome, \(user)"
        
    }
}

extension UIView {
    func addGradient(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
