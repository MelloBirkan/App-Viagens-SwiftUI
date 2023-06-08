//
//  ContentView.swift
//  App-Viagens
//
//  Created by Marcello Gonzatto Birkan on 07/06/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    
    var body: some View {
        
        GeometryReader { View in
            
            VStack {
                HeaderView()
                    .frame(width: View.size.width, height: 205, alignment: .center)
                List(viagens) { viagem in
                    CelulaViagemView(viagem: viagem)
                }
                .listStyle(PlainListStyle())
                //.scrollContentBackground(.hidden)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
