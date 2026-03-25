//
//  ViewModel.swift
//  NotasCoreData
//
//  Created by Nestor Leon mendoza on 10/02/26.
//

import Foundation
import SwiftUI
import CoreData
import Combine

class ViewModel: ObservableObject {
    
    @Published var nota = ""
    @Published var fecha = Date()
    @Published var show = false
    @Published var updateItem: NotasCoreData!
    
    func saveData(Context: NSManagedObjectContext){
        let newNote = NotasCoreData(context: Context)
        newNote.nota = nota
        newNote.fecha = fecha
        do{
            try Context.save()
            print("Guardado con éxito")
            show.toggle()
        } catch let error as NSError {
            //alertas al usuario
            print("Fallo en el guardado", error.localizedDescription)
        }
    }
    
    func deleteData(item: NotasCoreData, context: NSManagedObjectContext){
        context.delete(item)
        do{
            try context.save()
        }catch let error as NSError{
            print("Fallo al eliminar", error.localizedDescription)
        }
    }
    
    func updateData(context: NSManagedObjectContext){
        updateItem.fecha = fecha
        updateItem.nota = nota
        do{
            try context.save()
            print("Actualizado con éxito")
            show.toggle()
        } catch let error as NSError {
            //alertas al usuario
            print("Fallo en la actualización", error.localizedDescription)
        }
    }
    
    func sendData(item: NotasCoreData){
        updateItem = item
        nota = item.nota ?? ""
        fecha = item.fecha ?? Date()
        show.toggle()
    }
    
    
}
