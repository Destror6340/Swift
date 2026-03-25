//
//  HomeViewController.swift
//  primerapp
//
//  Created by alumno on 02/02/23.

import Foundation
import UIKit

class HomeViewController: UIViewController{
    var User = user(name: "", email: "", phone: "", edad: 0)
    
    //MARK: start outlets
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emaidesciptionLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneDesciptionLabeñ: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var ageDesciptionLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    //MARK: end outlets
    
    //MARK: start life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
        setUpUI()
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    //MARK: end life cycle
    
    
    
    
    // star logic functions
    private func setUpUI(){
        welcomeLabel.text="Bienvemnido"
        nameLabel.text=User.name
        emaidesciptionLabel.text="Email: "
        emailLabel.text=User.email
        phoneDesciptionLabeñ.text="Telfono: "
        phoneLabel.text=User.phone
        ageDesciptionLabel.text="Edad: "
        ageLabel.text=String(User.edad)
    }
    
}
