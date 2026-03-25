//  TransistorViewController.swift
//  ElectroHelp
//  Created by iOS Dev Lab on 10/08/23.
import CoreData
import UIKit

class TransistorViewController: UIViewController {
    //MARK: Variables
    var transistores: [Transistor] = [Transistor(name: "2N2222", type: "TBJ", chanel: "N", maxCurrent: "800 mA", hfe: "35-300", maxVoltage: "30-40 V"),
                                      Transistor(name: "BC547", type: "TBJ", chanel: "N", maxCurrent: "100 mA", hfe: "110-800", maxVoltage: "45 V"),
                                      Transistor(name: "2N3904", type: "TBJ", chanel: "N", maxCurrent: "200 mA", hfe: "100-400", maxVoltage: "40 V"),
                                      Transistor(name: "2N7000", type: "MOSFET", chanel: "N", maxCurrent: "200 mA", gateVoltage: "0.8-3 V", transconductancegm: "100 mA/V", ZeroGateVoltageDrainCurrent: "1 μA-1 mA", maxVoltage: "60 V"),
                                      Transistor(name: "2N5457", type: "FET", chanel: "N", maxCurrent: "10 mA", thresholdVoltage: "-0.5-(-0.6) V", transconductancegm: "1000-5000 mA/V", ZeroGateVoltageDrainCurrent: "1-5 mA", maxVoltage: "-25 V"),
                                      Transistor(name: "2N5454", type: "JFET", chanel: "N", maxCurrent: "50 mA", thresholdVoltage: "-1-(-4.5) V", transconductancegm: "1000-3000 mA/V", ZeroGateVoltageDrainCurrent: "0.5-5 mA", maxVoltage: "-50 V")]

    var container: NSPersistentContainer!

    //MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var chanelLabel: UILabel!
    @IBOutlet weak var chanelInfoLabel: UILabel!
    @IBOutlet weak var maxCurrentLabel: UILabel!
    @IBOutlet weak var maxCurrentValueLabel: UILabel!
    @IBOutlet weak var gainLabel: UILabel!
    @IBOutlet weak var gainValueLabel: UILabel!
    @IBOutlet weak var transconductance: UILabel!
    @IBOutlet weak var transconductanceValue: UILabel!
    @IBOutlet weak var IDssLabel: UILabel!
    @IBOutlet weak var IDssValue: UILabel!
    @IBOutlet weak var maxVoltageLabel: UILabel!
    @IBOutlet weak var maxVoltageValue: UILabel!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var showCircuitButton: UIButton!
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        /*guard container != nil else {
            fatalError("This view needs a persistent container.")
        }*/
        setUP()
    }
    
    //MARK: Actions
    @IBAction func searchAction(_ sender: Any) {
        // Almacenamiento de los text fields
        guard let name = nameText.text else { return }
        //let currentTransistor = Transistor(name: name)
        if name.isEmpty {
            showAlert(message: "Ingresa los datos faltantes")
        }
        else {
            if let result = transistores.first(where: { $0.name == name.uppercased() }) {
                switch result.type {
                case "TBJ":
                    chanelLabel.text = "Canal"
                    maxCurrentLabel.text = "Ic max: "
                    gainLabel.text = "hfe(β): "
                    transconductance.text = " "
                    IDssLabel.text = " "
                    maxVoltageLabel.text = "Vce max: "
                    
                    nameLabel.text = result.name
                    typeLabel.text = result.type
                    chanelInfoLabel.text = result.chanel
                    maxCurrentValueLabel.text = result.maxCurrent
                    gainValueLabel.text = result.hfe
                    transconductanceValue.text = " "
                    IDssValue.text = " "
                    maxVoltageValue.text = result.maxVoltage
                case "FET", "JFET":
                    chanelLabel.text = "Canal"
                    maxCurrentLabel.text = "Igf max: "
                    gainLabel.text = "Vgs(off): "
                    transconductance.text = "gm/gfs: "
                    IDssLabel.text = "IDss: "
                    maxVoltageLabel.text = "VGS max: "
                    
                    nameLabel.text = result.name
                    typeLabel.text = result.type
                    chanelInfoLabel.text = result.chanel
                    maxCurrentValueLabel.text = result.maxCurrent
                    gainValueLabel.text = result.thresholdVoltage
                    transconductanceValue.text = result.transconductancegm
                    IDssValue.text = result.ZeroGateVoltageDrainCurrent
                    maxVoltageValue.text = result.maxVoltage
                case "MOSFET":
                    chanelLabel.text = "Canal"
                    maxCurrentLabel.text = "Id max: "
                    gainLabel.text = "Vgs(th):"
                    transconductance.text = "gm/gfs: "
                    IDssLabel.text = "IDss: "
                    maxVoltageLabel.text = "VDS max: "
                    
                    nameLabel.text = result.name
                    typeLabel.text = result.type
                    chanelInfoLabel.text = result.chanel
                    maxCurrentValueLabel.text = result.maxCurrent
                    gainValueLabel.text = result.gateVoltage
                    transconductanceValue.text = result.transconductancegm
                    IDssValue.text = result.ZeroGateVoltageDrainCurrent
                    maxVoltageValue.text = result.maxVoltage
                default:
                    break
                }
            }
            else{
                showAlert(message: "Transistor desconocido")
            }
        }
    }
    
    @IBAction func showCircuitAction(_ sender: Any) {
        
        let circuitsStoryboard = UIStoryboard(name: "TransitorCircuitsStoryboard", bundle: .main)
        let circuitsViewController = circuitsStoryboard.instantiateViewController(withIdentifier: "CircuitsVC") as! TransistorCircuitViewController
        
        self.navigationController?.pushViewController(circuitsViewController, animated: true)

    }
    
    
    //MARK: Functions
    func setUP(){
        self.title = "Transistor"
        imageView.image = UIImage(named: "transistor")
        nameText.placeholder = "Modelo del transistor"
        searchButton.setTitle("Buscar", for: .normal)
        showCircuitButton.setTitle("Mostrar circuitos", for: .normal)
        nameLabel.text = " "
        chanelLabel.text = " "
        maxCurrentLabel.text = " "
        gainLabel.text = " "
        transconductance.text = " "
        IDssLabel.text = " "
        maxVoltageLabel.text = " "
        
        typeLabel.text = " "
        chanelInfoLabel.text = " "
        maxCurrentValueLabel.text = " "
        gainValueLabel.text = " "
        transconductanceValue.text = " "
        IDssValue.text = " "
        maxVoltageValue.text = " "
    }
    
    func showAlert(message: String){
        let errorTitle="ERROR"
        let alertController=UIAlertController(title: errorTitle, message: message, preferredStyle: .alert)
        let acceptAction=UIAlertAction(title: "Aceptar", style: .default){
            _ in
            print("Did select accept")
        }
        alertController.addAction(acceptAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
