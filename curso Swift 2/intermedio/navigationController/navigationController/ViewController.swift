//
//  ViewController.swift
//  navigationController
//
//  Created by Alumno on 02/08/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    //MARK: OUTLETS
    @IBOutlet weak var myMapView: MKMapView!
    @IBOutlet weak var myFirstImage: UIImageView!
    @IBOutlet weak var mySecondImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUo()
        
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

    //MARK: ACTIONS
    
    
    
    
    //MARK: Functions
    private func setUo(){
        myFirstImage.image = UIImage(named: "logoSwift")
        mySecondImage.image = UIImage(systemName: "doc.on.clipboard.fill")
        myMapView.centerCoordinate = CLLocationCoordinate2D(latitude: 52.475745, longitude: 13.479501)
        //myMapView.
    }

}

