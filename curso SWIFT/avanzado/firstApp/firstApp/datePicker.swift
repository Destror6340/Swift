//
//  datePicker.swift
//  firstApp
//
//  Created by alumno on 08/02/23.
//

import SwiftUI

struct datePicker: View {
    @State var fecha=Date.now
    var body: some View {
        VStack{
            DatePicker(selection: $fecha){
                Text("Fecha de cita")
            }
            .datePickerStyle(GraphicalDatePickerStyle())
            Text("Fecha de lacita: \(fecha.formatted(date: .long, time: .shortened))")
            DatePicker("Fecha", selection: $fecha, displayedComponents: .hourAndMinute)
            
            DatePicker("Fecha cita",selection: $fecha, in: Date.now...Date.now.addingTimeInterval(86400*2), displayedComponents: .date)
        }
    }
}

struct datePicker_Previews: PreviewProvider {
    static var previews: some View {
        datePicker()
    }
}
