//
//  ContentView.swift
//  Udemy1
//
//  Created by Nestor Leon mendoza on 26/01/26.
//

import SwiftUI

struct ContentView: View {
    //MARK: variables
    
    //MARK: enviroment values
    @Environment(\.horizontalSizeClass) var hSizeClass
    @Environment(\.verticalSizeClass) var vSizeClass
    
    var body: some View {
        if hSizeClass == .compact && vSizeClass == .regular{
            CompactView()
        }else{
            RegularView()
        }
    }
}

struct RegularView: View {
    //MARK: variables
    @State private var isOn: Bool = false
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)){ Color.green.opacity(0.5).edgesIgnoringSafeArea(.all)
            
            HStack{
                Button(){
                    isOn = true
                }label: {
                    Text("Hola")
                        .font(.largeTitle.bold())
                        .fontDesign(.monospaced)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }.alert(isPresented: $isOn, content: {
                    Alert(title: Text("Boton"),message: Text("a ver si jala"), dismissButton: .default(Text("OK")))
                })
                    
                
                Image(systemName: "heart.fill").imageScale(.large)
                Image(systemName: "eye")
                    .font(.system(size: 100, weight: .thin, design: .default))
                Image(systemName: "globe")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWidth(.compressed)
                    .foregroundStyle(Color.gray.opacity(0.9))
                    .bold()
            }
        }
    }
}

struct CompactView: View {
    //MARK: variables
    @State private var isOn: Bool = false
    let numero = "5552972341"
    let mensaje = "Hola, este mensaje fue enviado desde mi aplicación creada con SwiftUI."
    func sendMessage(){
        let sms = "sms:\(numero)?body=\(mensaje)"
        guard let smsString = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }
        UIApplication.shared.open(URL.init(string: smsString)!, options: [:], completionHandler: nil)
    }
    func sendCall(){
        let call = "tel:\(numero)"
        guard let callString = URL(string: call) else { return }
        UIApplication.shared.open(callString)
    }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)){ Color.cyan.opacity(0.5).edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 50){
                
                Button(action:{
                    sendCall()
                }){
                    Image(systemName: "phone.fill")
                        .modifier(boton(color: .blue))
                }
                Button(action:{
                    
                }){
                    Image(systemName: "square.and.arrow.up")
                        .modifier(boton(color: .gray))
                }
                Button(action:{
                    sendMessage()
                }){
                    Image(systemName: "message.fill")
                        .modifier(boton(color: .black))
                }
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWidth(.compressed)
                    .foregroundStyle(Color.gray.opacity(0.9))
                    .bold()
            }
            
            HStack{
                Button("Hola"){
                    isOn = true
                }.alert(isPresented: $isOn, content: {
                    Alert(title: Text("Boton"),message: Text("a ver si jala"), dismissButton: .default(Text("OK")))
                })
                Image(systemName: "heart.fill").imageScale(.large)
                Image(systemName: "eye").background(Color.green)
            }
        }
    }
}

//MARK: Modifiers
struct boton: ViewModifier{
    var color: Color
    func body(content: Content) -> some View {
        content.padding()
            .background(color)
            .clipShape(Circle())
            .imageScale(.large)
            .foregroundColor(Color.white)
    }
}


#Preview {
    Group {
        ContentView()

    }
}

