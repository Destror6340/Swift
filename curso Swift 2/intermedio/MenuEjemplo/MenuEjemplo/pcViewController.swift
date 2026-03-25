//
//  pcViewController.swift
//  MenuEjemplo
//
//  Created by Daniel Olivar on 27/07/23.
//

import UIKit
import WebKit

class pcViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    func setUpUI(){
        title = "PC"
        myImageView.image = UIImage(named: "valorant")
        myWebView.load(URLRequest(url: URL(string: "https://playvalorant.com/es-mx/")!))
    }


}
