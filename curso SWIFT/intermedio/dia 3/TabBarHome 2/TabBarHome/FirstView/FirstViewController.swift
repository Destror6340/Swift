//
//  FirstViewController.swift
//  TabBarHome
//
//  Created by alumno on 02/02/23.
//

import UIKit

class FirstViewController: UIViewController {

    //MARK: start outlets
    @IBOutlet weak var firstViewLabel: UILabel!
    
    //MARK: end outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }
    
    func setUpUI(){
        firstViewLabel.text="unoooo"
    }

}
