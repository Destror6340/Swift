//
//  HomeViewController.swift
//  Proyecto
//
//  Created by iOS Dev Lab on 11/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: Variables
    var ID: Int = 2
    var name: String = ""
    var usuarios: [User] = [User(id: 1, name: "Nestor", age: "23", email: "ngleonmendoza", pass: "1234")]
    
    var menuItems = [
        MenuItem(name: "Hamburguesa", description: "Una deliciosa hamburguesa con queso", price: 8.99),
        MenuItem(name: "Pizza", description: "Pizza de pepperoni con masa crujiente", price: 10.99),
        MenuItem(name: "Enchiladas", description: "Enciuladas verdes de pollo", price: 10.99),
        MenuItem(name: "Ensalada", description: "Ensalada de lechuga, jitomate y aguacate", price: 10.99),
        MenuItem(name: "Sushi", description: "Variedad de rollos de sushi", price: 15.99),
        MenuItem(name: "Tacos", description: "Tacos de carne asada con salsa verde", price: 9.99),
        MenuItem(name: "Pasta", description: "Pasta con salsa de tomate y albahaca", price: 12.99),
        MenuItem(name: "Sopa", description: "Sopa de pollo con fideos", price: 7.99),
        MenuItem(name: "Parrillada", description: "Parrillada mixta con chorizo y chuletas", price: 18.99),
        MenuItem(name: "Postre", description: "Tarta de chocolate con helado de vainilla", price: 6.99),
        MenuItem(name: "Burritos", description: "Burritos de cerdo con frijoles y arroz", price: 11.99),
        MenuItem(name: "Tofu a la Parrilla", description: "Tofu a la parrilla con verduras asadas", price: 12.99),
        MenuItem(name: "Tostadas", description: "Tostadas de camarones y aguacate", price: 13.99),
        MenuItem(name: "Papas Fritas", description: "Papas fritas crujientes con salsa de queso", price: 6.99),
        MenuItem(name: "Sándwich Club", description: "Sándwich triple capas con bacon y pollo", price: 9.99)
    ]



    //MARK: Outlet
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUP()
    }
    
    //MARK: Actions
    
    

    //MARK: Functions
    private func setUP() {
        self.title="Bienvenido"
        nameLabel.text = name
        userImage.image = UIImage(systemName: "person.fill.checkmark")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

//MARK: Extensions
extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 // Puedes tener múltiples secciones si es necesario
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItemCell", for: indexPath)
        let menuItem = menuItems[indexPath.row]
        cell.textLabel?.text = menuItem.name
        cell.detailTextLabel?.text = menuItem.description
        cell.detailTextLabel?.textColor = .gray
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = menuItems[indexPath.row]
        // Implementa la navegación o la lógica para mostrar detalles aquí
    }

}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //creating instance for details, where data will apeear, it will send data from the table to details view controller
        let detailsStoryboard = UIStoryboard(name: "DetailsStoryboard", bundle: .main)
        let detailsViewController = detailsStoryboard.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsViewController
        
        
        detailsViewController.dishName = menuItems[indexPath.row].name
        detailsViewController.dishDescription = menuItems[indexPath.row].description
        
        self.navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
