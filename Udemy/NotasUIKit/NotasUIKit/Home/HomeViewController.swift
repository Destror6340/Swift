//
//  HomeViewController.swift
//  NotasUIKit
//
//  Created by Nestor Leon mendoza on 16/02/26.
//

import UIKit
import CoreData

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {
    
    //MARK: Variables
    var notas = [Notas]()
    var fetchedResultsController: NSFetchedResultsController<Notas>!
    
    
    @IBOutlet weak var tableViewCells: UITableView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewCells.dataSource = self
        tableViewCells.delegate = self
        setupNavigationBar()
        setUp()
    }
    
    //MARK: functions
    func setupNavigationBar() {
            // Botón derecho
            navigationItem.rightBarButtonItem = UIBarButtonItem(
                image: UIImage(systemName: "plus"),
                style: .plain,
                target: target.self,
                action: #selector(addTapped))
        }

        @objc func addTapped() {
            print("Add presionado")
        }

        @objc func exitTapped() {
            print("Salir presionado")
        }
    
    func setUp(){
        self.title = "Notas"
        //celdaPrototype.
    }
    
    
    //MARK: Extensions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = notas[indexPath.row].titulo
        // Flecha derecha
        //cell.accessoryType = .disclosureIndicator
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .medium
        dateFormatter.locale = Locale.current
        cell.detailTextLabel?.text = dateFormatter.string(from: notas[indexPath.row].fecha!)
        cell.detailTextLabel?.textColor = .gray
        return cell
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
