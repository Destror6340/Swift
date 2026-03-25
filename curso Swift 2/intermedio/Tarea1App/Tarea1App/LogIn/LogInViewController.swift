//
//  LogInViewController.swift
//  Tarea1App
//
//  Created by Cristian guillermo Romero garcia on 01/08/23.
//

import UIKit

class LogInViewController: UIViewController {
    //MARK: OUTLETS
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var usuarioText: UITextField!
    @IBOutlet weak var contraseñaText: UITextField!
    @IBOutlet weak var registrarButton: UIButton!
    @IBOutlet weak var iniciarButton: UIButton!
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUP()
        
    }
    
    //MARK: ACTIONS
    @IBAction func RegisterButton(_ sender: Any) {
        let signUpStoryboard = UIStoryboard(name: "SignUpStoryboard", bundle: .main)
        let signUpViewController = signUpStoryboard.instantiateViewController(withIdentifier: "SignUpVC") as! SignUPViewController
        //signUpNavigation.modalPresentationStyle = .fullScreen //new window will cover the entire screen
        self.present(signUpViewController, animated: true)
    }
    
    @IBAction func logInButton(_ sender: Any) {
        guard let user = usuarioText.text, let password = contraseñaText.text else {return}
        if user.isEmpty || password.isEmpty {
            iniciarButton.isEnabled = false
        }
        else{
            iniciarButton.isEnabled = true      //activacion del boton
            //alemacenamiento de los text fields
            let newUser = usuarioText.text
            let newPassword = contraseñaText.text
            //creando la nueva pagina
            let homeStoryboard = UIStoryboard(name: "HomeStoryboard", bundle: .main)
            let homeViewController = homeStoryboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
            //paso de informnacion
            homeViewController.user = newUser!
            homeViewController.pasword = newPassword!
            //se presenta la nueva pagina de modo push con el navigation controller creado en el scene delegate
            self.navigationController?.pushViewController(homeViewController, animated: true)
        }
    }
    
    @IBAction func usuarioAction(_ sender: Any) {
        guard let user = usuarioText.text, let password = contraseñaText.text else {return}
        if user.isEmpty || password.isEmpty {
            iniciarButton.isEnabled = false
        }
        else{
            iniciarButton.isEnabled = true
        }
    }
    
    @IBAction func contraseñaAction(_ sender: Any) {
        guard let user = usuarioText.text, let password = contraseñaText.text else {return}
        if user.isEmpty || password.isEmpty {
            iniciarButton.isEnabled = false
        }
        else{
            iniciarButton.isEnabled = true
        }
    }

    //MARK: functions
    func setUP() {
        topView.backgroundColor = .black
        logoImage.image = UIImage(systemName: "person")
        dataLabel.text = "Ingresa tus datos"
        usuarioText.placeholder = "usuario"
        contraseñaText.placeholder = "contraseña"
        registrarButton.setTitle("No tienes cuenta? Registrate", for: .normal)
        iniciarButton.setTitle("Iniciar sesion", for: .normal)
        iniciarButton.isEnabled = false
    }
}
