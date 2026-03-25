//
//  label.swift
//  firstApp
//
//  Created by alumno on 07/02/23.
//

import SwiftUI

struct label: View {
    var body: some View {
        VStack{
            Label("Esta es una etiqueta",systemImage: "apps.iphone")
                .font(.system(size:35))
            
            Label{
                Text("Nestor")
                Text("Leon").opacity(0.5)
                    
            } icon:{
                //Image(systemName: "globe")
                   // .resizable()
                  //  .scaledToFit()
                  //  .frame(width: <#T##CGFloat?#>)
                Circle()
                    .fill(.blue)
                    .frame()
            }
        }
        .padding()
    }
}

struct label_Previews: PreviewProvider {
    static var previews: some View {
        label()
    }
}
