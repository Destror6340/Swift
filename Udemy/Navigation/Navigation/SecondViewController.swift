//
//  SecondViewController.swift
//  Navigation
//
//  Created by Jorge Maldonado Borbón on 15/03/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    var saludo : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        resultado.text = saludo
        
    }
    
    @IBAction func regresar(_ sender: UIButton) {
        //dismiss(animated: true)
        navigationController?.popViewController(animated: true)
    }
    

}
