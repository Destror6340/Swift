//
//  ViewController.swift
//  tabBar
//
//  Created by Alumno on 02/08/23.
//

import UIKit

class ViewController: UIViewController {
    //MARK: OUTLETS
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var infoTextView: UITextView!
    @IBOutlet weak var infoButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }

    
    private func setUP() {
        navigationController?.title = "Inicio"
        navigationController?.tabBarItem.image = UIImage(systemName: "house")
        infoLabel.text = "informacion"
        infoTextView.text = "Eligible students and educators are those who meet the minimum age requirement and are enrolled at, employed by, or contractors of a qualified educational institution. A qualified educational institution is one that has been accredited by an authorized governmental agency for the primary purpose of teaching enrolled students. This includes accredited middle schools, high schools, and higher education institutions. 🤪"
        infoTextView.isEditable = false
        infoTextView.font = UIFont(name: "systemFont", size: 34)
        infoButton.setTitle("Leer mas", for: .normal)
    }

}

