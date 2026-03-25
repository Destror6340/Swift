//
//  ViewController.swift
//  primerapp
//
//  Created by alumno on 31/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: start Outlets (antes del cilo)
    @IBOutlet weak var GeetingLabel: UILabel!
    @IBOutlet weak var ProfileImageView: UIImageView!
    @IBOutlet weak var AgeDescriptionLabel: UILabel!
    @IBOutlet weak var AgeBar: UISlider!
    @IBOutlet weak var AgeSwitch: UISwitch!
    @IBOutlet weak var ConfirmButton: UIButton!
    @IBOutlet weak var NameText: UITextField!
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var PhoneNumberText: UITextField!
    @IBOutlet weak var AgeValueLabel: UILabel!
    @IBOutlet weak var AgeSliderLabel: UILabel!
    @IBOutlet weak var AlertLabel: UILabel!
    //MARK: end outlets
    
    //MARK: start ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewDidAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
    }
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
    }
    //MARK: end life cycle
    
    //MARK: start actions (lo que hace cada elemento de la pantalla), despues del ciclo
    @IBAction func AgeSwitch(_ sender: Any) {
        if AgeSwitch.isOn == false{
            ConfirmButton.isEnabled=false
            AgeBar.isEnabled=false
            AgeValueLabel.text=""
        } else{
            ConfirmButton.isEnabled=true
            AgeBar.isEnabled=true
        }
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        AgeValueLabel.text=String(Int(AgeBar.value))
    }
    
    @IBAction func RegisterButton(_ sender: Any) {
        guard let name=NameText.text,
              let email=EmailText.text,
              let phone=PhoneNumberText.text
                    else{return}
        if name.isEmpty || email.isEmpty || phone.isEmpty {
            print("necesitas rellenar todos los datos")
            showErrorAlert()
        }else{
            print("Datos llenos")
            AlertLabel.text="Datos llenos"
            let newUser=user(name: name, email: email, phone: phone, edad: Int(AgeBar.value))
            print(newUser)
            presentHomeModule(with: newUser)
        }
    }
    //MARK: end actions
    
    //Creando funcion que configura los outlets enlazados
    func setUpUI(){
        ProfileImageView.image=UIImage(named: "profile")
        GeetingLabel.text="Hola, registrate"
        NameText.placeholder="Nombre"
        EmailText.placeholder="Emal"
        PhoneNumberText.placeholder="Telefono"
        AgeDescriptionLabel.text="Mayor de edad"
        AgeSliderLabel.text="Ingresa tu edad"
        ConfirmButton.setTitle("Registrar", for: .normal)
        AgeSwitch.isOn=false
        ConfirmButton.isEnabled=false
        AgeBar.isEnabled=false
        AgeBar.maximumValue=90
        AgeBar.minimumValue=18
        AgeValueLabel.text=""
        AlertLabel.text=""
    }
    //pasando la informacion al home view controller
    func presentHomeModule(with user: user){
        let homeStoryBoard=UIStoryboard(name: "HomeStoryboard", bundle: .main)
        let homeViewController=homeStoryBoard.instantiateViewController(withIdentifier: "homeVC")as! HomeViewController
        homeViewController.User = user
        //mandar a presentar a la pantalla
        self.present(homeViewController, animated: true, completion: nil)
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

