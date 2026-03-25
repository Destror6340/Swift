//
//  LogInViewController.swift
//  ElectroHelp
//
//  Created by iOS Dev Lab on 10/08/23.
//

import UIKit

class LogInViewController: UIViewController {
    //MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUP()
    }
    
    //MARK: start action
    @IBAction func logInAction(_ sender: Any) {
        //let homeViewController=TabBarViewController()
        //homeViewController.modalPresentationStyle = .fullScreen
        //self.present(homeViewController, animated: true)
        //self.navigationController?.pushViewController(homeViewController, animated: true)
        
        dismiss(animated: true)
    }
    
    
    // MARK: logic functions
    func setUP(){
        self.title="LogIn"
        logoImage.image = UIImage(named: "electronics")
        titleLabel.text="Bienvenido a Electro Help"
        logInButton.setTitle("Ingresar", for: .normal)
    }

}
