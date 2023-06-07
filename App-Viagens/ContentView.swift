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
            
            // MARK: - VStack Principal
            
            VStack {
                
                // MARK: - VStack Header
                
                VStack{
                    Text("Mello Viagens")
                        .font(.custom("Avenir Black", size: 25))
                        .padding(.top, 50)
                    
                    Text("Especial".uppercased())
                        .font(.custom("Avenir Book", size: 18))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                    Text("Mundo".uppercased())
                        .font(.custom("Avenir Black", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .foregroundColor(.white)
                .frame(width: View.size.width, height:180, alignment: .top)
                .background(Color.teal)
                
                HStack {
                    Button(action: {}) {
                            Text("Hotéis")
                                .font(.custom("Avenir Medium", size: 20))
                                .frame(width: 100, height: 50)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 232/255, green: 35/255, blue: 161/255))
                                )
                        }
                        .offset(x: 50)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: 20))
                            .frame(width: 100, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 232/255, green: 204/255, blue: 35/255))
                            )
                    }
                    .offset(x: -50)
                }
                .offset(y: -25)
                .foregroundColor(.white)
                
                    List(viagens) { viagem in
                        Text(viagem.titulo)
                        
                    }
                    .scrollContentBackground(.hidden)
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
