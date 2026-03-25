

import UIKit

class logInViewController: UIViewController {
    //MARK: OUTLETS
    @IBOutlet weak var logInButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    
    
    @IBAction func logInAction(_ sender: Any) {
        let homeViewController = TabBarController()
        homeViewController.modalPresentationStyle = .fullScreen
        self.present(homeViewController, animated: true)
        
    }
    
    private func setUP() {
        title = "LogIn"
        logInButton.setTitle("Ingresar", for: .normal)
    }
    
}
