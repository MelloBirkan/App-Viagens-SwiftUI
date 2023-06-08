//
//  MapaView.swift
//  App-Viagens
//
//  Created by Marcello Gonzatto Birkan on 07/06/23.
//

import SwiftUI
import MapKit

struct MapaView: UIViewRepresentable {
    
    var cordenada: CLLocationCoordinate2D!
   
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: cordenada, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView(cordenada: viagens[2].localizacao)
    }
}
