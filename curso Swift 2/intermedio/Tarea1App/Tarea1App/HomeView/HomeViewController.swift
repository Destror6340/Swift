//
//  HomeViewController.swift
//  Tarea1App
//
//  Created by Cristian guillermo Romero garcia on 01/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: OUTLETS
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    var user = ""
    var pasword = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUP()
    }
    
    //MARK: functions
    func setUP() {
        imageProfile.image = UIImage(systemName: "person.fill.checkmark")
        welcomeLabel.text = "Bienvenido"
        userLabel.text = user
    }

}
