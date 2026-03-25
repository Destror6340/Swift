//
//  nintendoViewController.swift
//  MenuEjemplo
//
//  Created by Daniel Olivar on 27/07/23.
//

import UIKit
import WebKit

class nintendoViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    func setUpUI(){
        title = "Nintendo"
        myImageView.image = UIImage(named: "superSmash")
        myWebView.load(URLRequest(url: URL(string: "https://www.nintendo.com/es-mx/")!))
    }


}
