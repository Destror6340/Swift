//
//  FirstWidgetBundle.swift
//  FirstWidget
//
//  Created by Nestor Leon mendoza on 04/03/26.
//

import WidgetKit
import SwiftUI


// MARK: Configuración
@main
struct FirstWidgetBundle: Widget {
    // El cuerpo del widget define su configuración principal, se especifica:
    // - el tipo de widget (estático, intent, etc.)
    // - el proveedor de datos
    // - la vista que lo renderiza
    // - los tamaños soportados
    // - el nombre y descripción visibles en la galería de widgets
    var body: some WidgetConfiguration {
        // StaticConfiguration indica que el widget no depende de parámetros externos
        // (como configuraciones del usuario). Es un widget simple y estático.
        StaticConfiguration(
            kind: "FirstWidget",   // Identificador único del widget
            provider: Provider()   // Proveedor que genera la línea de tiempo
        ) { entry in
            // Vista SwiftUI que se renderiza usando la entrada generada por el Provider.
            FirstWidget(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
        .description(LocalizedStringKey("First Widget description"))
        .configurationDisplayName(LocalizedStringKey("First Widget name"))
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}

