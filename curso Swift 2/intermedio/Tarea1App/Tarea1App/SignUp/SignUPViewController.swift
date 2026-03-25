
import UIKit

class SignUPViewController: UIViewController {
    //MARK: OUTLETS
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet var emailText: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUP()
    }
    
    @IBAction func userTextAction(_ sender: Any) {
        
    }
    
    @IBAction func passwordTextAction(_ sender: Any) {
        
    }
    
    @IBAction func emailTextAction(_ sender: Any) {
        
    }
    
    @IBAction func signUpAction(_ sender: Any) {
        guard let user = userText.text, let password = passwordText.text, let email = emailText.text else {return}
        if user.isEmpty || password.isEmpty || email.isEmpty {
            //signUpButton.isEnabled = false
            showErrorAlert()
        }
        else{
            //signUpButton.isEnabled = true      //activacion del boton
            //alemacenamiento de los text fields
            let newUser = userText.text
            let newPassword = passwordText.text
            let newEmail = emailText.text
            print("Registrado con exito")
        }
        dismiss(animated: true)
    }
    //MARK: functions
    func setUP() {
        titleLabel.text = "Registra tus datos"
        userText.placeholder = "Usuario"
        passwordText.placeholder = "Contraseña"
        emailText.placeholder = "Email"
        signUpButton.setTitle("Registrar", for: .normal)
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
