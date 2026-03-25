//
//  TransistorCircuitViewController.swift
//  ElectroHelp
//
//  Created by iOS Dev Lab on 16/11/23.
//

import UIKit

class TransistorCircuitViewController: UIViewController {
    // MARK: VARIABLES
    
    
    //MARK: OUTLETS
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var midView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topText: UITextView!
    @IBOutlet weak var midText: UITextView!
    @IBOutlet weak var bottomText: UITextView!
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var midImage: UIImageView!
    @IBOutlet weak var bottomImage: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUp()
    }
    
    // MARK: ACTIONS
    
    
    
    
    // MARK: FUNCTIONS
    func setUp(){
        topView.backgroundColor = .black
        midView.backgroundColor = .black
        bottomView.backgroundColor = .black
        topImage.image = UIImage(named: "corteTBJ")
        topImage.contentMode = .scaleToFill
        midImage.image = UIImage(named: "saturacionTBJ")
        midImage.contentMode = .scaleToFill
        bottomImage.image = UIImage(named: "resistor")
        bottomImage.contentMode = .scaleToFill
        topText.text = "Corte.\nOcurre cuando IB = 0. En la imagen, la terminal de la base está abierta, en esta condición la corriente de fuga en el colector (ICEO) es muy pequeña, por lo que se omite en el análisis del circuito, de tal forma que VCE = VCC. En la región de corte, ni la unión base-emisor ni la unión base-colector están polarizadas en directa."
        topText.textAlignment = .justified
        //topText.font = UIFont(name: "NombreDeLaFuente", size: 16.0)

    }
    
    
    
    
    // MARK: EXTENSIONS

   

}
