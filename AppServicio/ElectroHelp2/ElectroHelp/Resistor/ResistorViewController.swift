//  ResistorViewController.swift
//  ElectroHelp
//  Created by Néstor León on 10/08/23.

import UIKit

class ResistorViewController: UIViewController {
    // MARK: Variables
    let resistorColors: [String] = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "gray", "white", "gold", "silver"]
    var colorMix:[String] = ["0","0","0","0","0"]
    
    //MARK: Outlets
    @IBOutlet weak var bandsLabel: UILabel!
    @IBOutlet weak var bandsSwitch: UISwitch!
    @IBOutlet weak var resistorImage: UIImageView!
    @IBOutlet weak var firstBand: UIView!
    @IBOutlet weak var secondBand: UIView!
    @IBOutlet weak var thirdBand: UIView!
    @IBOutlet weak var fourthBand: UIView!
    @IBOutlet weak var fifthBand: UIView!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var ohmLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red

        // Do any additional setup after loading the view.
        setUP()
        //se lanza la pantalla de bienvenida
        let logInStoryboard = UIStoryboard(name: "LogInStoryboard", bundle: .main)
        let logInViewController = logInStoryboard.instantiateViewController(withIdentifier: "LogInVC") as! LogInViewController
        //signUpNavigation.modalPresentationStyle = .fullScreen //new window will cover the entire screen
        self.present(logInViewController, animated: true)
        
    }
    
    // MARK: Actions
    @IBAction func bandsAction(_ sender: Any) {
        if bandsSwitch.isOn {
            fourthBand.isHidden = false
            colorMix[2] = " "
        } else {
            fourthBand.isHidden = true
            colorMix[3] = " "
        }
    }
    
    //MARK: functions
    private func setUP() {
        title = "Resistor calculator"
        bandsLabel.text = "5 bands"
        bandsSwitch.isOn = false
        resistorImage.image = UIImage(named: "resistencia")
        
        firstBand.backgroundColor = .black
        secondBand.backgroundColor = .brown
        thirdBand.backgroundColor = .blue
        fourthBand.isHidden = true
        fifthBand.backgroundColor = .orange
        
        valueLabel.text = "Value: "
        ohmLabel.text = ""
        pickerView.dataSource = self
        pickerView.delegate = self
        //pickerView.
    }
}

//MARK: Picker View extension
extension ResistorViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return resistorColors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let color = resistorColors[row]
        var finalValue: String = ""
        switch component {
        case 0:
            let (bandColor, resistanceValue) = colorForBandName(color)
            firstBand.backgroundColor = bandColor
            colorMix[0] = resistanceValue
        case 1:
            let (bandColor, resistanceValue) = colorForBandName(color)
            secondBand.backgroundColor = bandColor
            colorMix[1] = resistanceValue
        case 2:
            let (bandColor, resistanceValue) = colorForBandName(color)
            thirdBand.backgroundColor = bandColor
            if bandsSwitch.isOn {
                colorMix[2] = resistanceValue
            } else {
                colorMix[2] = setMultiplier(color) //here goes multiplier
            }
        case 3:
            let (bandColor, resistanceValue) = colorForBandName(color)
            fourthBand.backgroundColor = bandColor
            if bandsSwitch.isOn {
                colorMix[3] = setMultiplier(color) //here goes multiplier
            } else {
                colorMix[3] = " "
            }
        case 4:
            let (bandColor, resistanceValue) = colorForBandName(color)
            fifthBand.backgroundColor = bandColor
            colorMix[4] = setTolerance(color)
        default:
            break
        }
        for value in colorMix {
            finalValue += value
            print(value)
        }
        ohmLabel.text = finalValue
    }
    //This fuction returns the value for the view's color band and band value
    private func colorForBandName(_ colorName: String) -> (UIColor, String) {
        var color: UIColor
        var resistanceValue: String
        switch colorName {
        case "black":
            color = .black
            resistanceValue = "0"
        case "brown":
            color = .brown
            resistanceValue = "1"
        case "red":
            color = .red
            resistanceValue = "2"
        case "orange":
            color = .orange
            resistanceValue = "3"
        case "yellow":
            color = .yellow
            resistanceValue = "4"
        case "green":
            color = .green
            resistanceValue = "5"
        case "blue":
            color = .blue
            resistanceValue = "6"
        case "violet":
            color = .purple
            resistanceValue = "7"
        case "gray":
            color = .gray
            resistanceValue = "8"
        case "white":
            color = .white
            resistanceValue = "9"
        case "gold":
            color = .systemOrange
            resistanceValue = "*" // Indicar que es un multiplicador
        case "silver":
            color = .lightGray
            resistanceValue = "*" // Indicar que es un multiplicador
        default:
            color = .clear
            resistanceValue = "*" // Indicar valor inválido
        }
        return (color, resistanceValue)
    }
    //This fuction returns the value for the view's color band and band value
    private func setTolerance(_ colorName: String) -> (String) {
        switch colorName {
            case "black":
                return " ±1%"
            case "brown":
                return " ±1%"
            case "red":
                return " ±2%"
            case "orange":
                return " ±0%"
            case "yellow":
                return " ±0%"
            case "green":
                return " ±0.5%"
            case "blue":
                return " ±0.25%"
            case "violet":
                return " ±0.10%"
            case "gray":
                return " ±0.05%"
            case "white":
                return " ±0%"
            case "gold":
                return " ±10%"
            case "silver":
                return " ±5%"
            default:
                return " ±0%"
        }
    }
    
    private func setMultiplier(_ colorName: String) -> (String) {
        switch colorName {
            case "black":
                return " [Ω]"
            case "brown":
                return "0 [Ω]"
            case "red":
                return "00 [Ω]"
            case "orange":
                return " [kΩ]"
            case "yellow":
                return "0 [kΩ]"
            case "green":
                return "00 [kΩ]"
            case "blue":
                return " [MΩ]"
            case "violet":
                return "0 [MΩ]"
            case "gray":
                return "00 [MΩ]"
            case "white":
                return " "
            case "gold":
                return " "
            case "silver":
                return " "
            default:
                return "±0%"
        }
    }
}

extension ResistorViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return resistorColors[row]
    }
}



