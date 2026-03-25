//
//  progressBar.swift
//  firstApp
//
//  Created by alumno on 09/02/23.
//

import SwiftUI

struct progressBar: View {
    @State var progress=0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            ProgressView()
                .tint(.blue)
            ProgressView("Descarga", value: 250, total: 1000)
            
            ProgressView("Descarga", value: progress, total: 100).onReceive(timer){ _ in
                if progress<100{
                    progress+=1
                }else{
                    progress=0
                }
                
            }
        }
            .padding()
    }
}

struct progressBar_Previews: PreviewProvider {
    static var previews: some View {
        progressBar()
    }
}
