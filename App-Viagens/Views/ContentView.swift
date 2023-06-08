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
        
        NavigationView {
            GeometryReader { View in
                
                VStack {
                    
                    HeaderView()
                        .frame(width: View.size.width, height: 205, alignment: .center)
                    
                    List(viagens) { viagem in
                        NavigationLink(
                            destination: MapaView(cordenada: viagem.localizacao)
                            .navigationBarTitle("Localização")
                        ) {
                            CelulaViagemView(viagem: viagem)
                        }.navigationTitle("")
                    }
                    .listStyle(PlainListStyle())
                }
            }
            .edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
