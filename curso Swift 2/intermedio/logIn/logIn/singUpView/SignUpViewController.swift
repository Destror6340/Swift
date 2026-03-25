//
//  SignUpViewController.swift
//  logIn
//
//  Created by alumno on 31/07/23.
//

import UIKit

class SignUpViewController: UIViewController {
    //MARK: start outlets
    @IBOutlet weak var baneView: UIView!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var namesTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageButton: UISwitch!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var age1Label: UILabel!
    @IBOutlet weak var ageValueLabel: UILabel!
    @IBOutlet weak var confirmLabel: UILabel!
    @IBOutlet weak var confirmButton: UIButton!
    //weak es volatil, se borra cuando se sale de la vista o se cierra el objeto
    //strong se queda al salir de la vista y siempre se queda esa referencia al objeto en memoria
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view Did Load")
        // Do any additional setup after loading the view.
        setUpUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view Will Appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view Did Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view Will Disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view Did Disappear")
    }
   
    //MARK: actions
    @IBAction func agSwitchButton(_ sender: Any) {
        if ageButton.isOn == false{
            ageSlider.isEnabled = false
            confirmLabel.isHidden = false
            confirmLabel.text = "You are not old enough"
            confirmButton.isEnabled = false
            ageValueLabel.isHidden = true
        }else{
            ageSlider.isEnabled = true
            ageValueLabel.isHidden = false
            ageValueLabel.text = String(Int(ageSlider.value))
            confirmLabel.isEnabled = true
            confirmButton.isEnabled = true
        }
    }
    
    @IBAction func ageSliderAction(_ sender: Any) {
        ageValueLabel.text = String(Int(ageSlider.value))
    }
    
    @IBAction func confirmButonAction(_ sender: Any) {
        guard let name = namesTextField.text, let lastName = lastNameTextField.text, let phone = phoneTextField.text else{
            return
        }
        if name.isEmpty || lastName.isEmpty || phone.isEmpty{
            confirmLabel.text = "Missing data"
            confirmButton.isEnabled = false
        }
        else{
            confirmButton.isEnabled = true
            let newUser = User(name: name, lastName: lastName, phone: phone, age: Int(ageSlider.value))
            let homeStoryboard = UIStoryboard(name: "HomeStoryboard", bundle: .main)
            let homeViewController = homeStoryboard.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
            homeViewController.user = newUser
            let homeNavigation = UINavigationController(rootViewController: homeViewController)
            homeNavigation.modalPresentationStyle = .fullScreen //new window will cover the entire screen
            //self.present(homeNavigation, animated: true)
            self.present(homeNavigation, animated: true, completion: nil)
            
        }
    }
    
    //MARK: logic functions
    func setUpUI(){
        topLabel.text = "Electro suport"
        registerLabel.text = "Fill your data please"
        ageLabel.text = "I´m 18+"
        age1Label.text = "Age: "
        ageValueLabel.text = ""
        confirmLabel.text = "Missing data"
        logoImage.image = UIImage(named: "ING")
        logoImage.layer.cornerRadius = logoImage.bounds.height / 2
        logoImage.clipsToBounds = true
        namesTextField.placeholder = "First name"
        lastNameTextField.placeholder = "Last name"
        phoneTextField.placeholder = "Phone number"
        ageButton.isOn = false
        ageSlider.isEnabled = false
        ageSlider.minimumValue = 18
        ageSlider.maximumValue = 100
        ageSlider.value = 18
        confirmButton.isEnabled = false
        ageValueLabel.isHidden = true
    }

}
