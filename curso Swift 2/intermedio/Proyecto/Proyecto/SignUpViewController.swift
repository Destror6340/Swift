//
//  SignUpViewController.swift
//  Proyecto
//
//  Created by iOS Dev Lab on 11/08/23.
//

import UIKit

class SignUpViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUP()
    }
    
    //MARK: Actions
    @IBAction func registerAction(_ sender: Any) {
        let logInStoryboard = UIStoryboard(name: "logInStoryboard", bundle: .main)
        let logInViewController = logInStoryboard.instantiateViewController(withIdentifier: "logInVC") as! logInViewController
        //signUpNavigation.modalPresentationStyle = .fullScreen //new window will cover the entire screen
        self.present(logInViewController, animated: true)
    }
    @IBAction func logInAction(_ sender: Any) {
        // Almacenamiento de los text fields
        guard let user = userTextField.text, let password = passwordTextField.text else { return }
        if user.isEmpty || password.isEmpty {
            showErrorAlert(errorMessage: "Ingresa los datos faltantes")
        }
        else {
            // Las credenciales coinciden, proceder a la siguiente vista
            let homeStoryboard = UIStoryboard(name: "HomeStoryboard", bundle: .main)
            let homeViewController = homeStoryboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
            homeViewController.name = user
            self.navigationController?.pushViewController(homeViewController, animated: true)
            }
        }
    


    
    
    //MARK: Functions
    private func setUP() {
        self.title="Iniciar sesion"
        userImage.image = UIImage(systemName: "person")
        dataLabel.text = "Ingresa tus datos"
        userTextField.placeholder = "Usuario"
        passwordTextField.placeholder = "Contraseña"
        registerButton.setTitle("Registrate", for: .normal)
        logInButton.setTitle("Ingresar", for: .normal)
    }
    func showErrorAlert(errorMessage: String){
        let errorTitle="ERROR"
        let alertController=UIAlertController(title: errorTitle, message: errorMessage, preferredStyle: .alert)
        let acceptAction=UIAlertAction(title: "Aceptar", style: .default){
            _ in
            print("Did select accept")
        }
        alertController.addAction(acceptAction)
        self.present(alertController, animated: true, completion: nil)
    }

}
