//
//  ViewController.swift
//  storyboard
//
//  Created by Nestor Leon mendoza on 27/01/26.
//

import UIKit

class ViewController: UIViewController {
     
    
    //MARK: Outlets
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var discounttextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var botomButtonConstrain: NSLayoutConstraint!
    @IBOutlet weak var welcomeLabelContrain: NSLayoutConstraint!
    
    
    
    //MARK: Functions
    func setUp(){
        homeLabel.text = "Bienvenido"
        homeLabel.textAlignment = .center
        amountTextField.placeholder = "Ingrese el monto"
        amountTextField.keyboardType = .numberPad
        discounttextField.placeholder = "10%"
        discounttextField.keyboardType = .numberPad
        calculateButton.setTitle( "Calcular", for: .normal)
        calculateButton.backgroundColor = .red
        calculateButton.setTitleColor(.black, for: .normal)
        resultLabel.text = "Resultado"
        resultLabel.textAlignment = .center
        resultLabel.font = UIFont.boldSystemFont(ofSize: 20)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUp()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        //super.traitCollectionDidChange(previousTraitCollection)

        if traitCollection.horizontalSizeClass == .compact &&
           traitCollection.verticalSizeClass == .regular {
            botomButtonConstrain.constant = 250
            welcomeLabelContrain.constant = 67
        } else if traitCollection.horizontalSizeClass == .compact &&
                  traitCollection.verticalSizeClass == .compact {
            botomButtonConstrain.constant = 50
            welcomeLabelContrain.constant = 20
        }
    }

    
    //MARK: Actions
    @IBAction func alertButton(_ sender: UIButton) {
        guard let amount = amountTextField.text else{return}
        guard let discount = discounttextField.text else {return}
        
        var total = (amount as NSString).floatValue * (discount as NSString).floatValue / 100
        total = (amount as NSString).floatValue - total
        
        resultLabel.text = "\(total)"
        
        let alert = UIAlertController(title: "Porcentaje", message: "el descuento fue calculado con exito", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Aceptar", style: .default)
        alert.addAction(ok)
        present(alert, animated: true, completion: {
            print("alerta")
        })
        self.view.endEditing(true)
    }
    
    @IBAction func amountTextAction(_ sender: Any) {
    }
    
    @IBAction func dicounttextAction(_ sender: Any) {
    }
    
}

