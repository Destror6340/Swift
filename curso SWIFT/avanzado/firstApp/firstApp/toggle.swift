//
//  toggle.swift
//  firstApp
//
//  Created by alumno on 09/02/23.
//

import SwiftUI

/*struct checkBoxStyle: ToggleStyle {
    
    
    func makeBody(configuration: self.Configuration) -> some View {
        return HStack{
            configuration.label
            Spacer()
            Image(systemName: configuration.isOn ? "Checkmark.circle.fill": "circle")
                .resizable()
                .fixedSize()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .purple: .gray)
                .onTapGesture{
                    configuration.isOn.toggle()
                }
        }
    }
}*/

struct toggle: View {
    @State var isOn: Bool=false
    var body: some View {
        HStack{
            Toggle("Toggle", isOn: $isOn)//.toggleStyle(checkBoxStyle())
            
        }
    }
}

struct toggle_Previews: PreviewProvider {
    static var previews: some View {
        toggle()
    }
}
