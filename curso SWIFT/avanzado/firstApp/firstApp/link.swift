//
//  link.swift
//  firstApp
//
//  Created by alumno on 09/02/23.
//

import SwiftUI

struct link: View {
    var body: some View {
        VStack{
            Link("Ir a iOs kab", destination: URL(string: "http://ioslab.ingenieria.unam.mx")!)
            
            Link(destination: URL(string: "http://ioslab.ingenieria.unam.mx")!, label: {
                Text("Ir a ios lab")
                    .background(Color.orange)
            })
            
            Link(destination: URL(string: UIApplication.openSettingsURLString)!){
                Label("Setting", systemImage: "gear")
            }
        }
    }
}

struct link_Previews: PreviewProvider {
    static var previews: some View {
        link()
    }
}
