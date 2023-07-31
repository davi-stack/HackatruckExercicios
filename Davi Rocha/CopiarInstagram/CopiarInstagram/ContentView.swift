//
//  ContentView.swift
//  CopiarInstagram
//
//  Created by Student08 on 28/07/23.
//

import SwiftUI

struct ContentView: View {
    var cores: Array = ["Baixo Peso", "Normal", "Sobrepeso", "Obesidade" ]
    @State var peso: Double = 0.0
    @State var altura: Double = 0.0
    @State var cor: String = "Baixo Peso"
    func estado(altura: Double, peso : Double) -> (Int) {
        let num = peso/(altura*altura)
        if(num<18.5) {return 0}
        if(num<24.99) {return 1}
        if(num<29.99) {return 2}
            
            return 3
    }
    var body: some View {
        
            
            VStack {
                VStack{
                    
                    Text("Calculadora de IMC")
                       // .frame(width:200, height: 80)
                        .font(.largeTitle)
                        
                    VStack(spacing: 30){
                        TextField("peso", value: $peso, formatter: NumberFormatter())
                            .keyboardType(.decimalPad)
                            .background(.white)
                            .multilineTextAlignment(.center)
                            .frame(height: 60)
                        TextField("altura", value: $altura, formatter: NumberFormatter())
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.center)
                            .background(.white)
                            
                        VStack(spacing: 40){
                            Button("Calcular") {
                            cor = cores[estado(altura: altura, peso: peso)]
                        }
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.title)
                        .fixedSize()
                        }
                    }
                    
                }
                Spacer()
                Text(cor)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Spacer()
                Image("tab")
                    .resizable()
                    .scaledToFit()
                    .frame(width:500)
                
            }
            .background(Color(cor))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
