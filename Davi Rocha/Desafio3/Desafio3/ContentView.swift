//
//  ContentView.swift
//  Desafio3
//
//  Created by Student08 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var texto = ""
    @State var click = false
    var body: some View {
        ZStack{
            Image("cam")
                .resizable()
                .scaledToFill()
                .opacity(0.2)
                .ignoresSafeArea()
                .saturation(0.5)
                .blur(radius: 3)
               // .position(x:200, y: 260)
                
            VStack {
                
                VStack{
                    Text("Bem vindo, \(texto) \n")
                       // .position(x:200, y: 50)
                    
                        TextField("Digite seu nome aqui", text: $texto)
                        //.position(x:0, y: 100)
                        .multilineTextAlignment(.center)
//                     
                }
                Spacer()
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 300)
                       // .position(x:150, y: -50)
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 300)
                       // .position(x: 170, y: -125)
                    
                }
                Spacer()
                VStack{
                    Button("Alerta") {
                        click = true
                        
                    }.bold()
                    
                        .alert(isPresented: $click) {
                            Alert(title: Text("ALERTA !"), message: Text("Você vai iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos lá!")))
                        }
                    
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
 Image("cam")
     .resizable()
     .scaledToFit()
     .frame(width: 400, height: 300)
     .position(x:180, y:110)
 Spacer()
 ZStack {
     Image("cam")
         .resizable()
         .clipShape(Circle())
         .frame(width:200, height: 200)
     Text("HackaTruck")
         .bold()
         .font(.system(size: 28))
         .foregroundColor(.blue)
         .position(x:180, y:65)
     
 }
 Spacer()
 ZStack{
     Rectangle()
         .size(width: 300, height: 200)
         .position(x: 200, y: 250)
         .bold()
     HStack{
         Text("Maker")
             .foregroundColor(.yellow)
             .bold()
             .font(.system(size:30))
             .position(x: 120, y: 200)
         Text("Stack")
             .foregroundColor(.red)
             .bold()
             .font(.system(size:30))
             .position(x: 35, y: 200)
     }
    
 */
