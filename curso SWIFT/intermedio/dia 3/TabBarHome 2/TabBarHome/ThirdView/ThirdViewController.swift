//
//  ThirdViewController.swift
//  TabBarHome
//
//  Created by alumno on 02/02/23.
//

import UIKit

class ThirdViewController: UIViewController {

    //MARK: start outlets
    @IBOutlet weak var thirdViewLabel: UILabel!
    @IBOutlet weak var PruebaPicker: UIPickerView!
    @IBOutlet weak var colorLine1: UIButton!
    
    
    //MARK: end outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
    }
    
    func setUpUI(){
        thirdViewLabel.text="treeees"
        
        
    }
    
    //MARK: start actions
    @IBAction func colorLine1(_ sender: Any) {
        
    }
    
    //MARK: end actions

}
