//
//  HomeViewController.swift
//  Bankey
//
//  Created by Nestor Leon mendoza on 20/04/26.
//

import UIKit

class AccountSummaryViewController: UIViewController {
    
    var accounts: [AccountSummaryViewModel] = []
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

extension AccountSummaryViewController {
    private func setup() {
        setupTableView()
        setupTableHeaderView()
        fetchData()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        // Registra la celda personalizada AccountSummaryCell para que el tableView pueda reutilizarla usando el identificador "AccountSummaryCell"
        tableView.register(AccountSummaryCell.self, forCellReuseIdentifier: "AccountSummaryCell")
        // Define la altura de cada fila del tableView utilizando una propiedad estática
        tableView.rowHeight = AccountSummaryCell.rowHeight
        // Asigna un UIView vacío como footer del tableView para eliminar separadores
        tableView.tableFooterView = UIView()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setupTableHeaderView() {
        // Se crea una instancia del header personalizado sin tamaño inicial
        let header = AccountSummaryHeaderView(frame: .zero)
        // Se calcula la altura óptima del header basado en Auto Layout usando el tamaño más comprimido posible
        var size = header.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        // Se ajusta manualmente el ancho del header al ancho de la tabla
        size.width = tableView.bounds.width
        // Se aplica el tamaño calculado al frame del header
        header.frame.size = size
        // Se asigna el header ya dimensionado como tableHeaderView de la tabla
        tableView.tableHeaderView = header
    }
    
    private func fetchData() {
        let savings = AccountSummaryViewModel(accountType: .Banking, accountName: "Basic Savings")
        let visa = AccountSummaryViewModel(accountType: .CreditCard, accountName: "Visa Avion Card")
        let investment = AccountSummaryViewModel(accountType: .Investment, accountName: "Tax-Free Saver")

        accounts.append(savings)
        accounts.append(visa)
        accounts.append(investment)
    }
}

extension AccountSummaryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard !accounts.isEmpty else { return UITableViewCell() }
        let cell = tableView.dequeueReusableCell(withIdentifier: AccountSummaryCell.reuseId, for: indexPath) as! AccountSummaryCell
        let account = accounts[indexPath.row]
        cell.configure(with: account)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
}

extension AccountSummaryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
