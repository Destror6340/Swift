//
//  LoginViewController.swift
//  JSONUIKit
//
//  Created by Nestor Leon mendoza on 22/02/26.
//

import UIKit

class LoginViewController: UIViewController {
    
    let login = LoginViewModel.shared       //recibo la referencia del objeto LoginViewModel creado en el SceneDelegate
    //var login = LoginViewModel()
    
    @IBOutlet weak var UserLabel: UILabel!
    @IBOutlet weak var UserTextField: UITextField!
    @IBOutlet weak var PasswordLabel: UILabel!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUp()
        login.onAuthStateChanged = { [weak self] state in
            if state == 1 {
                // Navegar al Home
                let storyboard = UIStoryboard(name: "HomeView", bundle: nil)
                let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeVC")
                self?.navigationController?.pushViewController(homeVC, animated: true)
            } else if state == 2 {
                // Mostrar error
                print("Credenciales incorrectas")
                self?.alert(title: "Error", message: "Credenciales incorrectas")
            }
        }
        //fuerza actualización inmediata
        login.onAuthStateChanged?(login.authenticated)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func setUp(){

        self.title = "Login"
        UserLabel.text = "User"
        UserLabel.textAlignment = .center
        UserTextField.placeholder = "Enter your user"
        UserTextField.borderStyle = .bezel
        PasswordLabel.text = "Password"
        PasswordLabel.textAlignment = .center
        PasswordTextField.placeholder = "Enter your password"
        PasswordTextField.isSecureTextEntry = true
        PasswordTextField.borderStyle = .line
        LoginButton.setTitle("Entrar", for: .normal)
    }
    
    func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    

    @IBAction func userTextFieldAction(_ sender: Any) {
        
    }
    
    @IBAction func passwordTextFieldAction(_ sender: Any) {
        
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        Task {
            await login.login(username: UserTextField.text ?? "" , password: PasswordTextField.text ?? "")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}






