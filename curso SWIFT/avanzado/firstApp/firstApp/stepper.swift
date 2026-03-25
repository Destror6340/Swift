//
//  stepper.swift
//  firstApp
//
//  Created by alumno on 09/02/23.
//

import SwiftUI

struct stepper: View {
    @State var value = 0
    let step=5
    let range=1...50
    let colors:[Color]=[.orange,.blue,.purple,.green,.red,.white,.black]
    
    func incremento(){
        value+=1
        if value >= colors.count{
            value=0
        }
    }
    func decremento(){
        value-=1
        if value <= colors.count{
            value=colors.count-1
        }
    }
    
    var body: some View {
        VStack{
            Stepper("Valor,\(value), step: \(step)", value: $value, in: range, step: step)
            Stepper{
                Text("valor: \(value), color: \(colors[value].description)")
            }onIncrement: {
                incremento()
            }onDecrement: {
                decremento()
            }.background(colors[value])
        }
    }
}

struct stepper_Previews: PreviewProvider {
    static var previews: some View {
        stepper()
    }
}
