//
//  HomeViewController.swift
//  logIn
//
//  Created by alumno on 01/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK: outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lasNameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var FistPageButton: UIButton!
    
    var user = User(name: "", lastName: "", phone: "", age: 0)
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view Did Load")
        // Do any additional setup after loading the view.
        setUpUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view Will Appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view Did Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view Will Disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view Did Disappear")
    }
    
//MARK: actions
    @IBAction func FirtsPageButtonAction(_ sender: Any) {
        let firstStoryboard = UIStoryboard(name: "FirtsStoryboard", bundle: .main)
        let firstViewController = firstStoryboard.instantiateViewController(withIdentifier: "FirstVC")as! FirstViewController
        firstViewController.navigationController?.pushViewController(firstViewController, animated: true) //new window will cover the entire screen
        self.present(firstViewController, animated: true)
    }
    //MARK: Functions
    func setUpUI(){
        nameLabel.text = user.name
        lasNameLabel.text = user.lastName
        phoneLabel.text = user.phone
        ageLabel.text = String(user.age)
        FistPageButton.setTitle("Ingresar", for: .normal)
    }

}
