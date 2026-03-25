//
//  CapacitorViewController.swift
//  ElectroHelp
//
//  Created by iOS Dev Lab on 10/08/23.
//

import UIKit

class CapacitorViewController: UIViewController {
    // MARK: Variables
    let numbersCode: [String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    var colorMix:[String] = ["0","0","0"]
    
    // MARK: Outkets
    @IBOutlet weak var capacitorImage: UIImageView!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var faradsLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var firstDigit: UILabel!
    @IBOutlet weak var secondDigit: UILabel!
    @IBOutlet weak var thirdDigit: UILabel!
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    // MARK: Actions

    
    // MARK: Fuctions
    private func setUP() {
        title = "Capacitor calculator"
        capacitorImage.image = UIImage(named: "capacitor")
        capacitorImage.tintColor = .systemOrange
        firstDigit.text = "0"
        secondDigit.text = "0"
        thirdDigit.text = "0"
        valueLabel.text = "Valor: "
        faradsLabel.text = " "
    
        pickerView.dataSource = self
        pickerView.delegate = self
    }

}


//MARK: Picker View extension
extension CapacitorViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbersCode.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let color = numbersCode[row]
        var finalValue: String = ""
        switch component {
        case 0:
            firstDigit.text = color
            colorMix[0] = color
        case 1:
            secondDigit.text = color
            colorMix[1] = color
        case 2:
            thirdDigit.text = color
            colorMix[2] = setMultiplier(color)
        default:
            break
        }
        for value in colorMix {
            finalValue += value
            print(value)
        }
        faradsLabel.text = finalValue
    }
    //This function sets the multiplier
    private func setMultiplier(_ numberCode: String) -> (String) {
        switch numberCode {
            case "0":
                return " [pF]"
            case "1":
                return "0 [pF]"
            case "2":
                return "00 [pF]"
            case "3":
                return " [nF]"
            case "4":
                return "0 [nF]"
            case "5":
                return "00 [nF]"
            case "6":
                return " [μF]"
            case "7":
                return "0 [μF]"
            case "8":
                return "00 [μF]"
            case "9":
                return " [mF]"
            default:
                return "±0%"
        }
    }
}

extension CapacitorViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numbersCode[row]
    }
}
