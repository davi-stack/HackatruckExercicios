//
//  ContentView.swift
//  AulaInicial
//
//  Created by Student08 on 27/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("cap")
                .resizable()
                .scaledToFit()
            Text("HackaTruck")
                .foregroundColor(.blue)
                .font(.system(size:30))
                .bold()
            HStack{
                Text("Maker")
                    .foregroundColor(.yellow)
                    .font(.system(size:25))
                    .bold()
                Text("Space")
                    .foregroundColor(.red)
                    .font(.system(size:25))
                    .bold()
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
