//
//  Modelo.swift
//  NotasUIKit
//
//  Created by Nestor Leon mendoza on 16/02/26.
//

import Foundation
import CoreData
import UIKit

class Modelo {
    
    public static let shared = Modelo()
    
    func contexto() -> NSManagedObjectContext {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        return delegate.persistentContainer.viewContext
        
    }
    
    func saveData(titulo: String, nota: String, fecha: Date){
        
        let context = contexto()
        let entityNotas = NSEntityDescription.insertNewObject(forEntityName: "Notas", into: context) as! Notas
        entityNotas.titulo = titulo
        entityNotas.nota = nota
        entityNotas.fecha = fecha
        do {
            try context.save()
        } catch let error as NSError{
            print("Fallo al guardar", error.localizedDescription)
        }
        
        
    }
}

