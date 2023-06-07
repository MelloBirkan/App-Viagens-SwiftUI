//
//  ContentView.swift
//  App-Viagens
//
//  Created by Marcello Gonzatto Birkan on 07/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Mello Viagens")
                .foregroundColor(.white)
                .font(.custom("Avenir Black", size: 25))
                
            
            Text("Especial".uppercased())
                .foregroundColor(.white)
                .font(.custom("Avenir Book", size: 18))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            
            Text("Mundo".uppercased())
                .font(.custom("Avenir Black", size: 20))
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
                
            List {
                Text("Miami")
                Text("Paris")
                Text("Veneza")
                Text("Berlin")
                Text("Amsterdam")
                Text("Nova York")
            }
        }
        .background(Color.teal)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
