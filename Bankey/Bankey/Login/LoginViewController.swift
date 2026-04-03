//
//  ViewController.swift
//  Bankey
//
//  Created by Nestor Leon mendoza on 26/03/26.
//

import UIKit

class LoginViewController: UIViewController {
    
    let appNameLabel = UILabel()
    let subtitleLabel = UILabel()
    let loginView = LoginView()
    let signInButton = UIButton(type: .system)
    let errorLabel = UILabel()
    
    var username: String? {
        return loginView.usernameTextField.text
    }
    var password: String? {
        return loginView.passwordTextField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        style()
        layout()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}



extension LoginViewController {
    private func style() {
        //takes any control or element of view to make it ready for autolayout for using custom constraints programatically
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8
        signInButton.setTitle("Sign In", for: [])
        signInButton.addTarget(self, action: #selector(didTapSignInButton), for: .touchUpInside)
        
        errorLabel.translatesAutoresizingMaskIntoConstraints = false
        errorLabel.textAlignment = .center
        errorLabel.textColor = .systemRed
        errorLabel.numberOfLines = 0
        errorLabel.text = "Error"
        errorLabel.isHidden = true
        
        appNameLabel.translatesAutoresizingMaskIntoConstraints = false
        appNameLabel.text = "Bankey"
        appNameLabel.textAlignment = .center
        appNameLabel.font = .systemFont(ofSize: 32, weight: .bold)
        
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.text = "A simple demo app"
        subtitleLabel.textAlignment = .center
        subtitleLabel.font = .systemFont(ofSize: 16, weight: .regular)
    }
    
    private func layout() {
        // Agrega loginView como subvista dentro de la vista principal, a partir de aquí, loginView ya forma parte de la jerarquía visual
        view.addSubview(appNameLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(loginView)
        view.addSubview(signInButton)
        view.addSubview(errorLabel)
        
        NSLayoutConstraint.activate([
            appNameLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 30),
            appNameLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: appNameLabel.trailingAnchor, multiplier: 1)
        ])
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: appNameLabel.bottomAnchor, multiplier: 1),
            subtitleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: appNameLabel.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: subtitleLabel.trailingAnchor, multiplier: 1),
        ])
        NSLayoutConstraint.activate([
            // Centra verticalmente loginView respecto a la vista principal
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            // Define la separación entre el borde izquierdo de loginView y el borde izquierdo de la vista principal usando el espaciado estándar del sistema
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            // Define la distancia entre el borde derecho del loginView y el borde derecho de su vista padre (view).
            // "El trailing de la vista padre debe estar después del trailing del loginView con el espaciado estándar del sistema".
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1),
        ])
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: signInButton.trailingAnchor, multiplier: 1),
        ])
        NSLayoutConstraint.activate([
            errorLabel.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            errorLabel.leadingAnchor.constraint(equalTo: signInButton.leadingAnchor),
            errorLabel.trailingAnchor.constraint(equalTo: signInButton.trailingAnchor)
        ])
        
        
    }
}

//MARK:Actions
extension LoginViewController {
    @objc private func didTapSignInButton() {
        errorLabel.isEnabled = true
        login()
    }
    
    private func login() {
        guard let username = username, let password = password else {
            assertionFailure("Username/password should never be nill")
            return
        }
        if username == "" || password == "" {
            errorLabel.isHidden = false
            errorLabel.text = "Please enter username and password"
            return
        }
        if username == "user" && password == "password" {
            signInButton.configuration?.showsActivityIndicator = true
        } else{
            errorLabel.isHidden = false
            errorLabel.text = "Incorrect username/password"
        }
    }
}
