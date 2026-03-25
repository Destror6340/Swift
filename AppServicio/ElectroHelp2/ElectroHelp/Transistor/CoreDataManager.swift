//
//  CoreDataManager.swift
//  ElectroHelp
//
//  Created by iOS Dev Lab on 08/01/24.
//

/*import Foundation
import CoreData

struct CoreDataManager {

    static let shared = CoreDataManager()

    let persistentContainer: NSPersistentContainer = {

        let container = NSPersistentContainer(name: "TransistorModel")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                fatalError("Loading of store failed \(error)")
            }
        }

        return container
    }()
    
    @discardableResult
    func createTransistor(name: String) -> Transistor? {
        let context = persistentContainer.viewContext
        
        // old way
        // let employee = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context) as! Employee // NSManagedObject
        
        // new way
        let transistor = Transistor(context: context)

        transistor.name = name

        do {
            try context.save()
            return transistor
        } catch let error {
            print("Failed to create: \(error)")
        }

        return nil
    }

    func fetchTransistors() -> [Transistor]? {
        let context = persistentContainer.viewContext

        let fetchRequest = NSFetchRequest<Transistor>(entityName: "Transistor")

        do {
            let transistores = try context.fetch(fetchRequest)
            return transistores
        } catch let error {
            print("Failed to fetch companies: \(error)")
        }

        return nil
    }

    func fetchTransistor(withName name: String) -> Transistor? {
        let context = persistentContainer.viewContext

        let fetchRequest = NSFetchRequest<Transistor>(entityName: "Transistor")
        fetchRequest.fetchLimit = 1
        fetchRequest.predicate = NSPredicate(format: "name == %@", name)

        do {
            let transistores = try context.fetch(fetchRequest)
            return transistores.first
        } catch let error {
            print("Failed to fetch: \(error)")
        }

        return nil
    }

    func updateTransistor(employee: Transistor) {
        let context = persistentContainer.viewContext

        do {
            try context.save()
        } catch let error {
            print("Failed to update: \(error)")
        }
    }

    func deleteTransistor(employee: Transistor) {
        let context = persistentContainer.viewContext
        context.delete(employee)

        do {
            try context.save()
        } catch let error {
            print("Failed to delete: \(error)")
        }
    }

}*/
