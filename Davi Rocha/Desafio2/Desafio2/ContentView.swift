//
//  ContentView.swift
//  Desafio2
//
//  Created by Student08 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
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
