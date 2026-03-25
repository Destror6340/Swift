//
//  addView.swift
//  NotasCoreData
//
//  Created by Nestor Leon mendoza on 10/02/26.
//

import SwiftUI

struct addView: View {
    
    
    @ObservedObject var model: ViewModel
    @Environment(\.managedObjectContext) var context
    
    var body: some View {
        VStack{
            Text(model.updateItem != nil ? "Editar nota" : "Agregar nota")
                .font(Font.largeTitle)
                .bold(true)
            Spacer()
            TextEditor(text: $model.nota)
            Divider()
            DatePicker("Fecha", selection: $model.fecha)
            Spacer()
            Button(action:{
                if model.updateItem != nil{
                    model.updateData(context: context)
                }else{
                    model.saveData(Context: context)
                }
            }){
                Label(
                    title: {Text("Guardar").foregroundColor(.white).bold()},
                    icon: {Image(systemName: "plus").foregroundColor(.white)})
            }
            .padding(10)
            .background(Color.blue)
            .cornerRadius(6)
                
        }.padding()
    }
}


