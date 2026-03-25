//
//  JSONApp.swift
//  JSON
//
//  Created by Nestor Leon mendoza on 17/02/26.
//

import SwiftUI

@main
struct JSONApp: App {
    var body: some Scene {
        
        let login = PostViewModel()
        
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
