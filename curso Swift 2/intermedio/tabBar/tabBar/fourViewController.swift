
import UIKit

class fourViewController: UIViewController {
    //MARK: ACTIONS
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    
    //MARK: ACTIONS

    
    
   
    //MARK: functions
    private func setUP() {
        tabBarItem.image = UIImage(systemName: "person")
        tabBarItem.title = "PERFIL"
        titleLabel.text = "Perfil"
        nameLabel.text = "Néstor"
        myImage.image = UIImage(systemName: "person.fill")
    }

}
