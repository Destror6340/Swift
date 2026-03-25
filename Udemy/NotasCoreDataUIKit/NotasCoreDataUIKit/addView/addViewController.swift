//
//  addViewController.swift
//  NotasCoreDataUIKit
//
//  Created by Nestor Leon mendoza on 11/02/26.
//

import UIKit

class addViewController: UIViewController {
    
    var Notas: Notas?
    
    
    
    //MARK: Outlets
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUp()
        if Notas == nil{
            validarText()
        }else{
            validarText2()
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //MARK: functions
    func setUp(){
        self.title = Notas != nil ? "Editar" : "Agregar"
        textField.placeholder = "Titulo"
        textField.keyboardType = .default
        textField.text = Notas?.titulo
        textView.layer.cornerRadius = 8
        textView.tintColor = .white
        textView.backgroundColor = .gray
        textView.text = Notas != nil ? Notas!.nota : ""
        datePicker.datePickerMode = .dateAndTime
        //datePicker.date = Notas != nil ? Notas!.fecha? : Date()
        datePicker.date = Notas?.fecha ?? Date()
        saveButton.layer.cornerRadius = 8
        saveButton.tintColor = .black
        saveButton.backgroundColor = .white
    }
    func validarText(){
        saveButton.isEnabled = false
        saveButton.backgroundColor = .lightGray
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    func validarText2(){
        saveButton.isEnabled = false
        saveButton.backgroundColor = .lightGray
        textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    @objc func textFieldDidChange(){
        guard let titulo = textField.text, !titulo.isEmpty else {
            saveButton.isEnabled = false
            saveButton.backgroundColor = .lightGray
            return
        }
        saveButton.isEnabled = true
        saveButton.backgroundColor = .systemBlue
    }
    
    
    //MARK: Actions
    @IBAction func saveButtonAction(_ sender: Any) {
        if Notas == nil{
            Modelo.shared.saveData(titulo: textField.text!, nota: textView.text!, fecha: datePicker.date)
        } else{
            Modelo.shared.editData(titulo: textField.text!, nota: textView.text!, fecha: datePicker.date, notas: Notas!)
        }
        navigationController?.popViewController(animated: true)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
