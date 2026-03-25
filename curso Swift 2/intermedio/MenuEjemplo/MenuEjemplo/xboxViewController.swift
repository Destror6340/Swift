//
//  xboxViewController.swift
//  MenuEjemplo
//
//  Created by Daniel Olivar on 27/07/23.
//

import UIKit
import WebKit

class xboxViewController: UIViewController {
    //MARK: OUTLETS
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myWebView: WKWebView!
    
    //MARK: MAIN
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    //MARK: SETUP
    func setUpUI(){
        title = "Xbox"
        myImageView.image = UIImage(named: "halo")
        myWebView.load(URLRequest(url: URL(string: "https://www.xbox.com/en-US/")!))
    }


}
