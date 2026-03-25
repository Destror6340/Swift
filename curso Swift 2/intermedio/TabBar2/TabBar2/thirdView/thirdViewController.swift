//
//  thirdViewController.swift
//  TabBar2
//
//  Created by Alumno on 03/08/23.
//

import UIKit

class thirdViewController: UIViewController {
    //MARK: OUTLETS
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    //MARK: ACTIONS
   
    
    //MARK: FUNCTIONS
    private func setUP() {
        title = "Perfil"
        titleLabel.text = "Bienvenido"
        nameLabel.text = "Nestor Leon"
        imageView.image = UIImage(systemName: "person")
    }

}
