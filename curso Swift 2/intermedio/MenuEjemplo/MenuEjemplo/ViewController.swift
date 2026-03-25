//
//  ViewController.swift
//  MenuEjemplo
//
//  Created by Daniel Olivar on 27/07/23.
//

import UIKit

class ViewController: UIViewController {
    //MARK: OUTLETS
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var xboxButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pcButton: UIButton!
    @IBOutlet weak var nintendoButton: UIButton!
    @IBOutlet weak var xboxLabel: UILabel!
    @IBOutlet weak var playLabel: UILabel!
    @IBOutlet weak var pcLabel: UILabel!
    @IBOutlet weak var nintengoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    //MARK: ACTIONS
    @IBAction func xboxButtonAction(_ sender: Any) {
    }
    @IBAction func playButtonAction(_ sender: Any) {
    }
    @IBAction func pcButtonAction(_ sender: Any) {
    }
    @IBAction func nintendoButtonAction(_ sender: Any) {
    }
    //MARK: FUNCIONES
    func setUpUI(){
        title = "Menú"
        titleLabel.text = "Elige tu plataforma favorita!"
       
        xboxButton.setImage(UIImage(systemName: "logo.xbox"), for: .normal)
        xboxButton.setTitle("", for: .normal)
        xboxButton.tintColor = UIColor.green
        xboxLabel.text = "XBOX"
        
        playButton.setImage(UIImage(systemName: "logo.playstation"), for: .normal)
        playButton.setTitle("", for: .normal)
        playButton.tintColor = UIColor.blue
        playLabel.text = "PS"
        
        pcButton.setImage(UIImage(systemName: "desktopcomputer"), for: .normal)
        pcButton.setTitle("", for: .normal)
        pcButton.tintColor = UIColor.orange
        pcLabel.text = "PC"
        
        nintendoButton.setImage(UIImage(systemName: "gamecontroller.fill"), for: .normal)
        nintendoButton.setTitle("", for: .normal)
        nintendoButton.tintColor = UIColor.red
        nintengoLabel.text = "NINTENDO"
        
    }
}
