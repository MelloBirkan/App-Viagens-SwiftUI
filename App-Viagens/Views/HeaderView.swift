//
//  HeaderView.swift
//  App-Viagens
//
//  Created by Marcello Gonzatto Birkan on 07/06/23.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        GeometryReader { View in
            
            // MARK: - VStack Header
            VStack{
                
                VStack{
                    Text("Mello Viagens")
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 25 : 35))
                        .padding(.top, 50)
                    
                    Text("Especial".uppercased())
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 18 : 28))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                    Text("Mundo".uppercased())
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .foregroundColor(.white)
                .frame(width: View.size.width, height:180, alignment: .top)
                .background(Color.teal)
                
                HStack {
                    Button(action: {}) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 20 : 30))
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
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 20 : 27))
                            .frame(width: 100, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color(red: 232/255, green: 204/255, blue: 35/255))
                            )
                        
                    }
                    .offset(x: -50)
                }
                .offset(y: self.horizontalSizeClass == .compact ? -25 : -15)
                .foregroundColor(.white)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
