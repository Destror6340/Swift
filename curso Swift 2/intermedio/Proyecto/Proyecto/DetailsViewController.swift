//
//  DetailsViewController.swift
//  Proyecto
//
//  Created by iOS Dev Lab on 05/09/23.
//

import UIKit

class DetailsViewController: UIViewController {
    //MARK: Varaibles
    var dishName = ""
    var dishDescription = ""
    
    //MARK: outlets
    @IBOutlet weak var dishLabel: UILabel!
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var orderButton: UIButton!
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    
    //MARK: Actions
    @IBAction func orderButtonAction(_ sender: Any) {
        showErrorAlert(errorMessage: "Has ordenado \(dishName)")
    }
    
    //MARK: functions
    private func setUP() {
        self.title="ordena"
        dishLabel.text = dishName
        dishImage.image = UIImage(systemName: "fork.knife.circle")
        descriptionText.text = dishDescription
        orderButton.setTitle("Ordenar", for: .normal)
    }
    func showErrorAlert(errorMessage: String){
        let errorTitle="Aviso"
        let alertController=UIAlertController(title: errorTitle, message: errorMessage, preferredStyle: .alert)
        let acceptAction=UIAlertAction(title: "Aceptar", style: .default){
            _ in
            print("Did select accept")
        }
        alertController.addAction(acceptAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
