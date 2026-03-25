//
//  FirstWidget.swift
//  FirstWidget
//
//  Created by Nestor Leon mendoza on 04/03/26.
//

import WidgetKit
import SwiftUI

// MARK: - Modelo de datos del widget
// Un TimelineEntry representa el estado del widget en un momento específico.
// WidgetKit no actualiza la UI continuamente: usa "entradas" programadas en el tiempo.
struct Model: TimelineEntry {
    var date: Date        // Momento en el que esta entrada debe mostrarse.
    var message: String   // Contenido que el widget mostrará.
}


// MARK: - Proveedor de datos (TimelineProvider)
// El Provider define:
// 1. Qué mostrar cuando el widget está cargando (placeholder)
// 2. Qué mostrar en una vista rápida (snapshot)
// 3. Qué datos reales usar y cuándo actualizar el widget (timeline)
struct Provider: TimelineProvider {
    // Se usa cuando el widget aún no tiene datos reales.
    func placeholder(in context: Context) -> Model {
        return Model(date: Date(), message: "")
    }
    // Se usa para generar una vista rápida del widget.
    // Ideal para previews o cuando no se necesita una línea de tiempo completa.
    func getSnapshot(in context: Context, completion: @escaping @Sendable (Model) -> Void) {
        completion(Model(date: Date(), message: ""))        //función WidgetKit para que entregfar el resultado del snapshot
    }
    // Genera la línea de tiempo real del widget.
    // Aquí defines qué datos mostrará y cuándo debe actualizarse.
    func getTimeline(in context: Context, completion: @escaping @Sendable (Timeline<Model>) -> Void) {
        // Entrada única con un mensaje fijo.
        let entry = Model(date: Date(), message: "Hello, World!")
        // Policy .after(Date.distantFuture) significa:
        // "No vuelvas a actualizar este widget automáticamente".
        // Es ideal para widgets estáticos.
        let timeline = Timeline(
            entries: [entry],
            policy: .never
        )
        completion(timeline)
    }
    // Alias para que el widget sepa qué tipo de entrada usa.
    typealias Entry = Model
}


// MARK: - Vista del widget
// Esta es la UI del widget. Recibe una entrada generada por el Provider.
struct FirstWidget: View {
    let entry: Provider.Entry   // Datos que el widget debe mostrar.
    var body: some View {
        VStack{
            //Se muestra el mensaje.
            Text(entry.message)
        }
        .containerBackground(for: .widget) {
            Color(.systemBackground)        // Fondo del widget (obligatorio)
        }
    }
}



 // Ejemplo de preview
#Preview(as: .systemSmall) {
    FirstWidgetBundle()         //envía el widget, no la vista
} timeline: {
    Model(date: .now, message: "Hello, World!")
}

