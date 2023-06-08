//
//  CelulaViagemView.swift
//  App-Viagens
//
//  Created by Marcello Gonzatto Birkan on 07/06/23.
//

import SwiftUI

struct CelulaViagemView: View {
    
    var viagem: Viagem
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
            
            HStack{
                Text(viagem.quantidadeDeDias)
                Spacer()
                Text(viagem.valor)
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[0])
    }
}
