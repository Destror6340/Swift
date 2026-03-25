import UIKit
import WebKit

class xboxViewController: UIViewController {
    
    @IBOutlet weak var xboxImage: UIImageView!
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    
    private func setUP(){
        title = "Xbox"
        myWebView.load(URLRequest(url: URL(string: "https://www.xbox.com/es-MX")!))
        xboxImage.image = UIImage(named: "xboxImage")
    }
    

}
