//
//  homeViewController.swift
//  NotasCoreDataUIKit
//
//  Created by Nestor Leon mendoza on 11/02/26.
//

import UIKit
import CoreData

class homeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {
    
    //MARK: Variables
    var notas = [Notas]()
    var fetchedResultsController: NSFetchedResultsController<Notas>!
    
    
    //MARK: Outlets
    @IBOutlet weak var tableViewCells: UITableView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewCells.dataSource = self
        tableViewCells.delegate = self
        setupNavigationBar()
        setUp()
        showNotes()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tableViewCells.endEditing(true)
    }

    //MARK: functions
    func setupNavigationBar() {
        // Botón derecho
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "plus"),
            style: .plain,
            target: self,
            action: #selector(addTapped))
    }
    @objc func addTapped() {
        let storyboard = UIStoryboard(name: "AddViewStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(
            withIdentifier: "AddViewVC"
        ) as! addViewController
        navigationController?.pushViewController(vc, animated: true)
        print("Abrir ventana")
    }

    @objc func exitTapped() {
        print("Salir presionado")
    }
    
    func setUp(){
        self.title = "Notas"
        //celdaPrototype.
    }
    
    
    // CoreData
    func showNotes(){
        let contexto = Modelo.shared.contexto()
        let fetchRequest: NSFetchRequest<Notas> = Notas.fetchRequest()
        let order = NSSortDescriptor(keyPath: \Notas.fecha, ascending: true)
        fetchRequest.sortDescriptors = [order]
        fetchedResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: contexto, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultsController.delegate = self
        
        do{
            try fetchedResultsController.performFetch()
            notas = fetchedResultsController.fetchedObjects!
        }catch let error as NSError{
            print("Error al cargar notas: \(error.localizedDescription)")
        }
    }
    func controllerWillChangeContent(_ controller: NSFetchedResultsController <NSFetchRequestResult>) {
        tableViewCells.beginUpdates()
    }
    func controllerDidChangeContent(_ controller: NSFetchedResultsController <NSFetchRequestResult>) {
        tableViewCells.endUpdates()
    }
    func controller(_ controller: NSFetchedResultsController <NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        
        switch type {
            case .insert:
                self.tableViewCells.insertRows(at: [newIndexPath!], with: .automatic)
            case .delete:
                self.tableViewCells.deleteRows(at: [indexPath!], with: .automatic)
            case .update:
                self.tableViewCells.reloadRows(at: [indexPath!], with: .automatic)
            default:
            print("Desconocido")
            
        }
        self.notas = controller.fetchedObjects as! [Notas]
    }
    //MARK: Actions
    
    
    
        
    //}
    
    
    //MARK: Extensions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = notas[indexPath.row].titulo
        // Flecha derecha
        cell.accessoryType = .disclosureIndicator
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .medium
        dateFormatter.locale = Locale.current
        cell.detailTextLabel?.text = dateFormatter.string(from: notas[indexPath.row].fecha!)
        cell.detailTextLabel?.textColor = .gray
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let notaSeleccionada = notas[indexPath.row]
        let storyboard = UIStoryboard(name: "AddViewStoryboard", bundle: nil)
        let vc = storyboard.instantiateViewController(
            withIdentifier: "AddViewVC"
        ) as! addViewController
        vc.Notas = notaSeleccionada
        navigationController?.pushViewController(vc, animated: true)

    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Eliminar") { (action, view, completionHandler) in
            let contexto = Modelo.shared.contexto()
            let borrar = self.fetchedResultsController.object(at: indexPath)
            contexto.delete(borrar)
            do{
                try contexto.save()
            } catch let error as NSError {
                print("Fallo al eliminar: \(error.localizedDescription)")
            }
        }
        let editAction = UIContextualAction(style: .normal, title: "Editar") { (action, view, completionHandler) in
            
        }
        return UISwipeActionsConfiguration(actions: [deleteAction, editAction])
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
