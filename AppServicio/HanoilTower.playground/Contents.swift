import SwiftUI

struct ContentView: View {
    @State var T1:[DiscView] = [DiscView(width: 20, height: 15), DiscView(width: 30, height: 15), DiscView(width: 40, height: 15), DiscView(width: 50, height: 15)]
    @State var T2:[DiscView] = []
    @State var T3:[DiscView] = []
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Hanoi Tower")
                    .font(.headline)
                Spacer()
                Button("Reset game") {
                     resetGame()
                 }
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                VStack{
                    ForEach(T1, id: \.self) { discView in
                        discView
                    }
                }
                .frame(width: 10, height: 80, alignment: .center)
                Spacer()
                VStack{
                    ForEach(T2, id: \.self) { discView in
                        discView
                    }
                }
                .frame(width: 10, height: 80, alignment: .center)
                Spacer()
                VStack{
                    ForEach(T3, id: \.self) { discView in
                        discView
                    }
                }
                .frame(width: 10, height: 80, alignment: .center)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                Button("1 to 2") {
                    if !T1.isEmpty {
                        let removedDisk = T1.removeFirst()
                        if T2.isEmpty {
                            T2.insert(removedDisk, at: 0)
                        }
                        else{
                            let disk2 = T2.removeLast()
                            T2.append(disk2)
                            if removedDisk.width < disk2.width{
                                T2.insert(removedDisk, at: 0)
                            }
                            else{
                                T1.insert(removedDisk, at: 0)
                            }
                        }
                    }
                    checkWinCondition()
                }
                Spacer()
                Button("2 to 3") {
                    if !T2.isEmpty {
                        let removedDisk = T2.removeFirst()
                        if T3.isEmpty {
                            T3.insert(removedDisk, at: 0)
                        }
                        else{
                            let disk2 = T3.removeLast()
                            T3.append(disk2)
                            if removedDisk.width < disk2.width{
                                T3.insert(removedDisk, at: 0)
                            }
                            else{
                                T2.insert(removedDisk, at: 0)
                            }
                        }
                    }
                    checkWinCondition()
                }
                Spacer()
            }
            HStack {
                Spacer()
                Button("2 to 1") {
                    if !T2.isEmpty {
                        let removedDisk = T2.removeFirst()
                        if T1.isEmpty {
                            T1.insert(removedDisk, at: 0)
                        }
                        else{
                            let disk2 = T1.removeLast()
                            T1.append(disk2)
                            if removedDisk.width < disk2.width{
                                T1.insert(removedDisk, at: 0)
                            }
                            else{
                                T2.insert(removedDisk, at: 0)
                            }
                        }
                    }
                    checkWinCondition()
                }
                Spacer()
                Button("3 to 2") {
                    if !T3.isEmpty {
                        let removedDisk = T3.removeFirst()
                        if T2.isEmpty {
                            T2.insert(removedDisk, at: 0)
                        }
                        else{
                            let disk2 = T2.removeLast()
                            T2.append(disk2)
                            if removedDisk.width < disk2.width{
                                T2.insert(removedDisk, at: 0)
                            }
                            else{
                                T3.insert(removedDisk, at: 0)
                            }
                        }
                    }
                    checkWinCondition()
                }
                Spacer()
            }
            .frame(width: 260, height: 60, alignment: .center)
        }
        .alert(isPresented: $showingAlert) {
                    Alert(
                        title: Text("¡Has ganado!"),
                        message: Text("Has completado el juego de Torres de Hanoi."),
                        dismissButton: .default(Text("OK"))
                    )
                }
    }
    private func resetGame() {
            T1 = [DiscView(width: 20, height: 15), DiscView(width: 30, height: 15), DiscView(width: 40, height: 15), DiscView(width: 50, height: 15)]
            T2 = []
            T3 = []
        }
    private func checkWinCondition() {
            if T3.count == 4 { // Cambia 4 al número total de discos que tienes
                showingAlert = true
                resetGame()
            }
        }
}
struct DiscView: View, Hashable {
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .foregroundColor(.blue)
    }
}
        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        
import PlaygroundSupport
PlaygroundPage.current.setLiveView(ContentView())
    
    
