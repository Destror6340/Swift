//
//  ColeccionViewController.swift
//  Tablas
//
//  Created by Jorge Maldonado Borbón on 27/11/20.
//

import UIKit

class ColeccionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    

    @IBOutlet weak var coleccion: UICollectionView!
    var lista = [Lista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.delegate = self
        coleccion.dataSource = self
        
        let lista1 = Lista(nombre: "Jorge", email: "jmb@live.com")
        let lista2 = Lista(nombre: "Daniela", email: "jmb@live.com")
        let lista3 = Lista(nombre: "Maria", email: "jmb@live.com")
        let lista4 = Lista(nombre: "Pedro", email: "jmb@live.com")
        let lista5 = Lista(nombre: "Ruben", email: "jmb@live.com")
        lista.append(lista1)
        lista.append(lista2)
        lista.append(lista3)
        lista.append(lista4)
        lista.append(lista5)

        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coleccion.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! CeldaCollectionViewCell
        let list = lista[indexPath.row]
        cell.nombre.text = list.nombre
        cell.imagen.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }
    

   

}
