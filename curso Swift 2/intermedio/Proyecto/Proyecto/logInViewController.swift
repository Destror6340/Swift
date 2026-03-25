//
//  logInViewController.swift
//  Proyecto
//
//  Created by iOS Dev Lab on 29/08/23.
//

import UIKit

class logInViewController: UIViewController {
   
    // MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var paswordText: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    // MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    
    // MARK: Actions
    @IBAction func registerAction(_ sender: Any) {
        //alemacenamiento de los text fields
        guard let name = nameText.text, let age = ageText.text, let email = emailText.text,  let password = paswordText.text else {return}
        if name.isEmpty || password.isEmpty {
            showErrorAlert()
        }
        else{
            registerButton.isEnabled = true      //activacion del boton
            //creando la nueva pagina
            let homeStoryboard = UIStoryboard(name: "HomeStoryboard", bundle: .main)
            let homeViewController = homeStoryboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
            //paso de informnacion
            let usuario: User = User(id: homeViewController.ID, name: name, age: age, email: email, pass: password)
            homeViewController.usuarios.append(usuario)
            homeViewController.ID += 1
            //se presenta la nueva pagina de modo push con el navigation controller creado en el scene delegate
            dismiss(animated: true, completion: nil)
        }
    }
    
    // MARK: Functions
    private func setUP() {
        titleLabel.text = "Ingresa tus datos"
        nameText.placeholder = "Nombre"
        ageText.placeholder = "Edad"
        emailText.placeholder = "Email"
        paswordText.placeholder = "Contraseña"
        registerButton.setTitle("Guardar", for: .normal)
    }
    func showErrorAlert(){
        let errorTitle="ERROR"
        let message="Llena los campos vacios"
        let alertController=UIAlertController(title: errorTitle, message: message, preferredStyle: .alert)
        let acceptAction=UIAlertAction(title: "Aceptar", style: .default){
            _ in
            print("Did select accept")
        }
        alertController.addAction(acceptAction)
        self.present(alertController, animated: true, completion: nil)
    }

}
