//
//  HomeViewController.swift
//  JSONUIKit
//
//  Created by Nestor Leon mendoza on 23/02/26.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var bienvenidoLabel: UILabel!
    @IBOutlet weak var usuariosTableView: UITableView!
    
    private let homeViewModel = HomeViewModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUp()
        bindViewModel()
        homeViewModel.fetch()
    }
    
    
    func setUp(){
        bienvenidoLabel.text = "Bienvenido"
        bienvenidoLabel.textAlignment = .center
        usuariosTableView.register(UINib(nibName: "CellViewCntroller", bundle: .main), forCellReuseIdentifier: "customCell")
        usuariosTableView.delegate = self
        usuariosTableView.dataSource = self
        self.title = "Inicio"
        self.view.backgroundColor = .gray
    }
    
    private func bindViewModel() {
        homeViewModel.onDataUpdated = { [weak self] in
            self?.usuariosTableView.reloadData()
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        homeViewModel.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? CellViewController{
            let User = homeViewModel.user(at: indexPath.row)
            cell.configure(with: User)
            return cell
        } else {
            return UITableViewCell()
        }
    
    }

}
