//
//  Home.swift
//  NotasCoreData
//
//  Created by Nestor Leon mendoza on 10/02/26.
//

import SwiftUI
import CoreData

struct Home: View {
    
    @StateObject var model = ViewModel()                    //Crea y mantiene una instancia del ViewModel dentro de la vista, la vista es la                                                        “dueña” del objeto. SwiftUI se asegura de que el objeto persista mientras la                                                            vista esté viva, y no se recree cada vez que la vista se redibuje.
    @Environment(\.managedObjectContext) var context        //Obtiene el NSManagedObjectContext que SwiftUI inyecta en el entorno, lo provee                                                        el PersistenceController configurado.
    //@FetchRequest(entity: NotasCoreData.entity(), sortDescriptors: [NSSortDescriptor(key: "fecha", ascending: true)],
    //                animation: .spring()) var results: FetchedResults<NotasCoreData>     //Obtiene todos los resultados y los ordena                                                                                              por fecha ascendente
    
    //@FetchRequest(entity: NotasCoreData.entity(), sortDescriptors: [],
    //              predicate:  NSPredicate(format: "fecha <= %@", Date() as CVarArg),
    //              animation: .spring()) var results: FetchedResults<NotasCoreData>      //Obtiene los resultados y los filtra segun se le                                                                                     indique en predicate ("fecha <= %@")
    
    //@FetchRequest(entity: NotasCoreData.entity(), sortDescriptors: [],
    //              predicate:  NSPredicate(format: "nota == 'IMPORTANTE'"),
    //              animation: .spring()) var results: FetchedResults<NotasCoreData>       //Obtiene los resultados y los filtra segun se le                                                                                        indique en predicate ("nota == 'IMPORTANTE'")
    @FetchRequest(entity: NotasCoreData.entity(), sortDescriptors: [],
                  predicate:  NSPredicate(format: "nota CONTAINS[c] 'IMPORTANTE'"),
                  animation: .spring()) var results: FetchedResults<NotasCoreData>       //Obtiene los resultados y los filtra segun se le                                                                        indique en predicate ("nota CONTAINS[c] 'IMPORTANTE'")
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(results){ item in
                    VStack(alignment: .leading){
                        Text(item.nota ?? "Sin nota")
                            .font(.title)
                            .bold()
                        Text(item.fecha ?? Date(), formatter: dateFormatter)
                    }.contextMenu(ContextMenu(menuItems:  {
                        Button(action:{
                            model.sendData(item: item)
                        }){
                            Label(title:{
                                Text("Editar")
                            }, icon:{
                                Image(systemName: "pencil")
                            })
                        }
                        Button(action:{
                            model.deleteData(item: item, context: context)
                        }){
                            Label(title:{
                                Text("Eliminar")
                            }, icon:{
                                Image(systemName: "trash")
                            })
                        }
                    }))
                }
            }.navigationTitle(Text("Notas"))
            .navigationBarItems(trailing: Button(action:{
                model.show.toggle()
            }){
                Image(systemName: "plus")
                    .font(.title)
                    .foregroundColor(Color.blue)
            })
            .sheet(isPresented: $model.show, content: {
                addView(model: model)
            })
        }
    }
    
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }()
}
