//
//  TestCombineApp.swift
//  TestCombine
//
//  Created by Jorge Maldonado Borbón on 08/12/20.
//

import SwiftUI

@main
struct TestCombineApp: App {
    
    var modelo = Modelo()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelo)
        }
    }
}
