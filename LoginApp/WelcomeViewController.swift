//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Armen Madoyan on 02.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcome: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcome ?? "")"
    }
}
