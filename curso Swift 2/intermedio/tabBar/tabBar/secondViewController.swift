
import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the vie
        setUP()
    }


    private func setUP() {
        navigationController?.title = "Inicio"
        navigationController?.tabBarItem.image = UIImage(systemName: "house")
        textView.text = "Eligible students and educators are those who meet the minimum age requirement and are enrolled at, employed by, or contractors of a qualified educational institution. A qualified educational institution is one that has been accredited by an authorized governmental agency for the primary purpose of teaching enrolled students. This includes accredited middle schools, high schools, and higher education institutions. 🤪"
        textView.isEditable = false
        textView.backgroundColor = .black
        textView.font = UIFont(name: "systemFont", size: 34)
    }
}
