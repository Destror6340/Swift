//
//  ContentView.swift
//  NotasCoreData
//
//  Created by Nestor Leon mendoza on 09/02/26.
//

import SwiftUI

struct ContentView: View {
    

    var body: some View {
        Home()
    }

    
}



#Preview {
    Home()//.environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
