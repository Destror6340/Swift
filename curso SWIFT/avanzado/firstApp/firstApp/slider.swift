//
//  slider.swift
//  firstApp
//
//  Created by alumno on 09/02/23.
//

import SwiftUI

struct slider: View {
    @State var volumen=50.0
    @State var isEditing: Bool=false
    var body: some View {
        VStack{
            Slider(value: $volumen, in: 0...100,step: 5){
                Text("Volumen: \(volumen)")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("100")
            } onEditingChanged: { editing in
                isEditing=editing
            }
            Text("\(volumen, specifier: "%.5f")")
                .foregroundColor(isEditing ? .red : .blue)
        }
    }
}

struct slider_Previews: PreviewProvider {
    static var previews: some View {
        slider()
    }
}
