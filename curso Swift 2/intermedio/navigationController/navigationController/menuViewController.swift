import UIKit

class menuViewController: UIViewController {
    
    //MARK: OUTLETS
    @IBOutlet weak var xboxButton: UIButton!
    @IBOutlet weak var xboxLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var playLabel: UILabel!
    @IBOutlet weak var pcButton: UIButton!
    @IBOutlet weak var pcLabel: UILabel!
    @IBOutlet weak var nintendoButton: UIButton!
    @IBOutlet weak var nintendoLabel: UILabel!
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
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
    @IBAction func xboxAction(_ sender: Any) {
        print("XBOX")
    }
    @IBAction func playAction(_ sender: Any) {
        
    }
    @IBAction func pcAction(_ sender: Any) {
        
    }
    @IBAction func nintendoAction(_ sender: Any) {
        
    }
    //MARK: functions
    private func setUP(){
        xboxLabel.text = "xbox"
        playLabel.text = "Play satation"
        pcLabel.text = "PC"
        nintendoLabel.text = "Nintendo"
        xboxButton.setImage(UIImage(systemName: "xbox.logo"), for: .normal)
        xboxButton.setTitle("", for: .normal)
        xboxButton.tintColor = UIColor.green
        playButton.setImage(UIImage(systemName: "playstation.logo"), for: .normal)
        playButton.setTitle("", for: .normal)
        playButton.tintColor = UIColor.blue
        pcButton.setImage(UIImage(systemName: "pc"), for: .normal)
        pcButton.setTitle("", for: .normal)
        pcButton.tintColor = UIColor.red
        nintendoButton.setImage(UIImage(systemName: "gamecontroller"), for: .normal)
        nintendoButton.setTitle("", for: .normal)
        nintendoButton.tintColor = UIColor.cyan
    }

}
