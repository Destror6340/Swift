//
//  ViewController.swift
//  ScrollStacksView
//
//  Created by Nestor Leon mendoza on 30/01/26.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var ImageView1: UIImageView!
    @IBOutlet weak var TextView1: UITextView!
    @IBOutlet weak var ImageView2: UIImageView!
    @IBOutlet weak var TextView2: UITextView!
    @IBOutlet weak var PickerView: UIPickerView!
    @IBOutlet weak var ImageView3: UIImageView!
    @IBOutlet weak var TextView3: UITextView!
    
    
    
    //MARK: Functions
    func setUp(){
        ImageView1.image = UIImage(systemName: "square.and.arrow.up")
        ImageView1.tintColor = .red
        
        TextView1.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae odio a tortor bibendum condimentum. Donec vitae odio a tortor bibendum condimentum. Donec vitae odio a tortor bibendum condimentum."
        TextView1.textColor = .red
        ImageView2.image = UIImage(systemName: "p1.button.horizontal")
        ImageView2.tintColor = .green
        TextView2.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae odio a tortor bibendum condimentum. Donec vitae odio a tortor bibendum condimentum. Donec vitae odio a tortor bibendum condimentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ."
        TextView2.textColor = .gray
        ImageView3.image = UIImage(systemName: "paddleshifter.right")
        ImageView3.tintColor = .blue
        TextView3.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vitae odio a tortor bibendum condimentum. Donec vitae odio a tortorbibendumaaaaaaaaasafasgerrghbvrehbgarethbet|hbgtrhnbtrhbtrhbtrhrtyhrtyhnrthjrstyjhrytjnyrtjytrjrtyj."
        TextView3.textColor = .green
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUp()
    }
    
    
    //MARK: Variations
    /*private func updateConstraintsForTraits() {
        if traitCollection.horizontalSizeClass == .compact &&
           traitCollection.verticalSizeClass == .regular {
            stackView.axis = .vertical
        } else if traitCollection.horizontalSizeClass == .regular &&
                  traitCollection.verticalSizeClass == .compact {
            stackView.axis = .horizontal
        }
        view.layoutIfNeeded()
    }*/
    
    
    //MARK: Actions
    

}

