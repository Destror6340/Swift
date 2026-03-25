//
//  ViewController.swift
//  TabBar2
//
//  Created by Alumno on 03/08/23.
//

import UIKit

class ViewController: UIViewController {
    //MARK: OUTLETS
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var textView: UITextView!
    @IBOutlet var readMoreButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    //MARK: ACTIONS
    @IBAction func readMoreAction(_ sender: Any) {
        let descriptionStoryboard = UIStoryboard(name: "Storyboard", bundle: .main)
        let DescriptionViewController = descriptionStoryboard.instantiateViewController(withIdentifier: "descriptionVC") as! descriptionViewController
        //signUpNavigation.modalPresentationStyle = .fullScreen //new window will cover the entire screen
        self.present(DescriptionViewController, animated: true)
    }
    
    //MARK: FUNCTIONS
    private func setUP() {
        title = "Inicio"
        descriptionLabel.text = "Descripcion"
        textView.text = "Una aplicación de control de gastos es una herramienta diseñada para ayudar a las personas a administrar y supervisar sus finanzas personales de manera efectiva."
        readMoreButton.setTitle("Leer mas", for: .normal)
        textView.isEditable = false
        textView.backgroundColor = .lightGray
        textView.font = UIFont(name: "systemFont", size: 20)
    }

}

