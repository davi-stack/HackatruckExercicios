//
//  ContentView.swift
//  Aula01
//
//  Created by edilsonalmeida on Janeiro/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("Hacka") // Primeira Imagem
                .resizable()//Ajusta a imagem ao tamanho da tela
                .scaledToFit() //Escala a imagem travando a largura
            
            Spacer()
            
            Image("Hacka") // Segunda Imagem
                .resizable()
                .scaledToFit()
                .clipShape(Circle()) //Define uma forma de recorte para esta visualização
                .blur(radius: 1.0) //Aplica um desfoque
                .overlay(
                    Text("HackaTruck")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, -80)
                        .foregroundColor(.blue)
                    , alignment: .center
                ) //Coloca em camadas uma vista secundária na frente dessa vista
            
            Spacer()
            
            HStack{
                Text("Maker")
                    .font(.title)
                    .foregroundColor(.yellow)
                    .padding([.top, .leading, .bottom], 50.0)
                
                Text("Space")
                    .font(.title)
                    .foregroundColor(.pink)
                    .padding([.top, .bottom, .trailing], 50.0)
                
            }.background(Color.black)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
