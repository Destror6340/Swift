//
//  TasksViewController.swift
//  SocialServiceApp
//
//  Created by alumno on 17/02/23.
//

import UIKit

class ResistorViewController: UIViewController {
    //MARK: start outlets
    @IBOutlet weak var Color1Label: UILabel!
    
    
    //MARK: end outlets
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
        
    }
    //MARK: logic functions
    //Creando funcion que configura los outlets enlazados
    func setUpUI(){
        Color1Label.text="Choose the resisor colors"
    }
    
    //MARK: end logic functions
    //MARK: start actions
    
    //MARK: end actions
}
