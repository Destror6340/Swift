//
//  textEditor.swift
//  firstApp
//
//  Created by alumno on 08/02/23.
//

import SwiftUI

struct textEditor: View {
    @State var text=""
    @State var contador: Int = 0
    var body: some View {
        VStack{
            TextEditor(text: $text)
                .fontWeight(.heavy)
                .overlay{
                    RoundedRectangle(cornerRadius: 25).stroke(Color.secondary,lineWidth: 3)
                }
                .scaledToFit()
                .frame(width: 200, height: 100)
                .padding()
                .onChange(of: text, perform: {value in contador = value.count})
                
                    Text("\(contador)/15")
                
        }
    }
}

struct textEditor_Previews: PreviewProvider {
    static var previews: some View {
        textEditor()
    }
}
