//
//  LoginViewController.swift
//  TabBarHome
//
//  Created by alumno on 02/02/23.
//

import UIKit

class LoginViewController: UIViewController {
   
    //MARK: Outlets
    @IBOutlet weak var SingUpButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    //MARK: end outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    //MARK: start action
    @IBAction func LoginButton(_ sender: Any) {
        let homeViewController=HomeTabBarController()
        homeViewController.modalPresentationStyle = .fullScreen
        //self.present(homeViewController, animated: true)
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    //MARK: end actions
    
    
    // logic functions
    func setUpUI(){
        self.title="LogIn"
        titleLabel.text="logIn"
        SingUpButton.setTitle("Ingresar", for: .normal)
    }

}
