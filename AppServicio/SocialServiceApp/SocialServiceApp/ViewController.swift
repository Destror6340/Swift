//  ViewController.swift
//  SocialServiceApp
//  Created by alumno on 10/02/23.

import UIKit

class ViewController: UIViewController {
    //MARK: start outlets
    @IBOutlet weak var WelcomeLabel: UILabel!
    @IBOutlet weak var LogInButton: UIButton!
    
    //MARK: end outlets
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
    }
    
    //MARK: logic functions
    func setUpUI(){
        WelcomeLabel.text="Welcome"
        WelcomeLabel.textColor = .white
        LogInButton.setTitle("Log in", for: .normal)
        LogInButton.setTitleColor(.white, for: .normal)
        view.backgroundColor = .black
    }
    
    
    //MARK: end logic functions
    //MARK: start actions
    @IBAction func LoigInButton(_ sender: Any) {
        let homeViewController=TabBarController()
        homeViewController.modalPresentationStyle = .fullScreen
        //self.present(homeViewController, animated: true)
        let navigationController=UINavigationController(rootViewController: homeViewController)
        self.navigationController?.pushViewController(homeViewController, animated: true)
        
    
    }
    //MARK: end actions
}

