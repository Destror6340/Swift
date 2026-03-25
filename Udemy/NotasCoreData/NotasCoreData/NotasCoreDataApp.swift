//
//  NotasCoreDataApp.swift
//  NotasCoreData
//
//  Created by Nestor Leon mendoza on 09/02/26.
//

import SwiftUI
import CoreData

@main
struct NotasCoreDataApp: App {
    let persistenceController = PersistenceController.shared    //Obtiene una instancia compartida del controlador de persistencia.
                                //PersistenceController es la clase que encapsula la configuración de Core Data (el NSPersistentContainer).
                                //shared suele ser un singleton, para que toda la app use el mismo contenedor y contexto.

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                            //Inyecta el contexto de Core Data en el environment de SwiftUI.
                            //Esto significa que cualquier vista dentro de ContentView (y sus hijas) puede acceder al managedObjectContext usando @Environment(\.managedObjectContext).
                            //Es la forma en que se conecta Core Data con la jerarquía de vistas de SwiftUI.
        }
    }
}
