//
//  secondViewController.swift
//  TabBar2
//
//  Created by Alumno on 03/08/23.
//

import UIKit

class secondViewController: UIViewController {
    //MARK: OUTLETS
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var metaLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    
    //MARK: ACTIONS
    @IBAction func sliderAction(_ sender: Any) {
        valueLabel.text = "\(Int(slider.value))"
    }
    
    //MARK: FUNCTIONS
    private func setUP() {
        title = "Meta"
        slider.minimumValue = 0
        slider.maximumValue = 10_000
        slider.value = 0
        slider.maximumTrackTintColor = .red
        slider.minimumTrackTintColor = .green
        valueLabel.text = ""
        metaLabel.text = "Objetivo: "
        titleLabel.text = "META"
        imageView.image = UIImage(systemName: "dollarsign.circle")
    }
}
