//
//  VistaModificadores.swift
//  M
//
//  Created by ios dev lab fi unam on 08/02/23.
//

import SwiftUI

struct Title: ViewModifier{
    func body(content: Content) -> some View{
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
    }
}

extension View{
    func titleStyle() -> some View{
        modifier(Title())
    }
}

struct WaterMarck: ViewModifier{
    
    var text: String
    
    func body(content: Content) -> some View{
        
        ZStack(alignment: .bottomTrailing){
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
            
        }
    }
}

extension View{
    func watermarked(with text: String ) -> some View{
        modifier(WaterMarck(text: text))
    }
}



struct VistaModificadores: View {
    var body: some View {
        VStack{
            Group{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                Text("Hello, World!")
            }.titleStyle()
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Imagen 4")
            Image("mariposa")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .watermarked(with: "Imagen 4")
            
        }
                    
    }
}

struct VistaModificadores_Previews: PreviewProvider {
    static var previews: some View {
        VistaModificadores()
    }
}
