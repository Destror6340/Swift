//
//  Navegacion2.swift
//  firstApp
//
//  Created by alumno on 10/02/23.
//
import SwiftUI

struct Platform: Hashable{
    let name: String
    let imageName: String
    let color: Color
}

struct Game: Hashable{
    let name: String
    let rating: String
}

struct NavegacionEj1: View {
    
    var platforms: [Platform] = [
        .init(name: "Xbox", imageName: "xbox.logo", color: .green),
        .init(name: "Playstation", imageName: "playstation.logo", color: .indigo),
        .init(name: "PC", imageName: "pc", color: .pink),
        .init(name: "Mobile" , imageName: "iphone", color: .mint)]
    
    var games: [Game] = [
        .init(name: "Minecraft", rating: "99"),
        .init(name: "God of War", rating: "98"),
        .init(name: "Thrtnite", rating: "92"),
        .init(name: "Madden 2023", rating: "88131")]
    
    @State var path = NavigationPath() //variable arreglo de vistas
    
    
    var body: some View {
        NavigationStack(path: $path){
            List {
                Section("Platforms") {
                    ForEach(platforms, id: \.name ) { platform in
                        NavigationLink(value: platform) {
                            Label(platform.name, systemImage: platform.imageName)
                                .foregroundColor(platform.color)
                            
                        }
                    }
                }
                Section("Games"){
                    ForEach(games, id: \.name) { game in
                        NavigationLink(value: game) {
                            Text(game.name)
                        }
                    }
                }
            }
            .navigationTitle("Gaming")
            .navigationDestination(for: Platform.self){ plat in
                ZStack{
                    plat.color.ignoresSafeArea()
                    VStack{
                        Label(plat.name, systemImage: plat.imageName)
                            .font(.largeTitle).bold()
                        List{
                            ForEach(games, id: \.name) { game in
                                NavigationLink(value: game){
                                    Text(game.name)
                                }
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Game.self) { game in
                VStack{
                    Text("\(game.name) - \(game.rating)")
                        .font(.largeTitle.bold())
                    Button("Juego recomendado"){
                        path.append(games.randomElement()!)
                    }
                    Button("Ve a otra plataforma"){
                        path.append(platforms.randomElement()!)
                    }
                    Button("inicio"){
                        path.removeLast(path.count) //borra todos los elementos del pad para ir al inicio
                    }
                }
            }
        }
    }
}

struct Navegacion2_Previews: PreviewProvider{
    static var previews: some View {
        NavegacionEj1()
    }
}
