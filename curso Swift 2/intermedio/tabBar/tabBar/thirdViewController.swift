
import UIKit

class thirdViewController: UIViewController {
    //MARK: OUTLETS

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var goalSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    //MARK: ACTIONS
    @IBAction func sliderAction(_ sender: Any) {
        var sliderValue = "\(Int(goalSlider.value))"
        goalLabel.text = sliderValue
    }
    
    
   
    //MARK: functions
    private func setUP() {
        tabBarItem.image = UIImage(systemName: "flag")
        tabBarItem.title = "META"
        titleLabel.text = "OBjetivo"
        goalSlider.minimumValue = 0
        goalSlider.maximumValue = 10_000
        goalSlider.value = 0
        goalSlider.maximumTrackTintColor = .red
        goalSlider.minimumTrackTintColor = .green
        goalLabel.text = ""
        myImage.image = UIImage(systemName: "dollarsign.circle")
    }
}
