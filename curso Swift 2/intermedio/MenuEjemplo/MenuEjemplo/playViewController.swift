//
//  playViewController.swift
//  MenuEjemplo
//
//  Created by Daniel Olivar on 27/07/23.
//

import UIKit
import WebKit

class playViewController: UIViewController {
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    func setUpUI(){
        title = "PlayStation"
        myImageView.image = UIImage(named: "spider")
        myWebView.load(URLRequest(url: URL(string: "https://www.playstation.com/es-mx/")!))
    }
}
