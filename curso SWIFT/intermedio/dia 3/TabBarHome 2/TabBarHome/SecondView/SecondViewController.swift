//
//  SecondViewController.swift
//  TabBarHome
//
//  Created by alumno on 02/02/23.
//

import UIKit
 
class SecondViewController: UIViewController {

    //MARK: start outlets
    @IBOutlet weak var secondViewLabel: UILabel!
    //MARK: end outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }
    
    func setUpUI(){
        secondViewLabel.text="dooooos"
    }

}
