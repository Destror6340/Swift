//
//  ViewController.swift
//  UserDefaults
//
//  Created by Nestor Leon mendoza on 09/02/26.
//

import UIKit


class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var TextField1: UITextField!
    @IBOutlet weak var TextField2: UITextField!
    @IBOutlet weak var TextField3: UITextField!
    @IBOutlet weak var Button1: UIButton!
    
    var array = [String()]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUp()
        if let myArray = UserDefaults.standard.stringArray(forKey: "Array"){
            TextField1.text = myArray[0]
            TextField2.text = myArray[1]
            TextField3.text = myArray[2]
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func setUp(){
        TextField1.placeholder = "Key"
        TextField2.placeholder = "Value"
        TextField3.placeholder = "Key"
        Button1.setTitle("Save", for: .normal)
    }
    func alerta(titulo: String, mensaje: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }

    
    //MARK: Actions
    @IBAction func Bitton1Action(_ sender: Any) {
        if TextField1.text=="" || TextField2.text=="" || TextField3.text=="" {
            alerta(titulo: "Error", mensaje: "Ingresa los campos")
        }else{
            array.append(TextField1.text!)
            array.append(TextField2.text!)
            array.append(TextField3.text!)
            UserDefaults.standard.set(array, forKey: "Array")
            alerta(titulo: "Exito", mensaje: "Datos guardados")
        }
    }
    @IBAction func textField1Action(_ sender: Any) {
        
    }
    @IBAction func TextField2Action(_ sender: Any) {
        
    }
    @IBAction func TextField3Action(_ sender: Any) {
        
    }
    
    
    
}

