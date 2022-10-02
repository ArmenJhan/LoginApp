//
//  ViewController.swift
//  LoginApp
//
//  Created by Armen Madoyan on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let currentUserName = "User"
    let currentPassword = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcome = userNameTF.text
    }
    
    @IBAction func unwindLogOutTapped(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInTapped() {
        guard let userName  = userNameTF.text, let password = passwordTF.text else { return }
        if userName != currentUserName || password != currentPassword {
            showAlert(title: "Sorry", message: "Enter correct username or password")
        }
    }
    
    @IBAction func forgotNameAction() {
        guard let userName  = userNameTF.text else { return }
        if userName != currentUserName {
            showAlert(title: "Ooops", message: "You name is User😋")
        }
    }
    
    @IBAction func forgotPasswordAction() {
        guard let password  = passwordTF.text else { return }
        if password != currentPassword {
            showAlert(title: "Ooops", message: "You password is Password😇")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

