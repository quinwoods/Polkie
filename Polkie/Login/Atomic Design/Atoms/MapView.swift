//
//  MapView.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/26/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI
import MapKit

 struct MapView: UIViewRepresentable {
     class Coordinator: NSObject, MKMapViewDelegate{
         var parent: MapView
         init(_ parent: MapView){
             self.parent = parent
         }
     }

     func makeCoordinator() -> MapView.Coordinator {
         Coordinator(self)
     }
     func makeUIView(context: Context) -> MKMapView {
         let mapView = MKMapView()
         mapView.delegate = context.coordinator
         return mapView
     }
     func updateUIView(_ uiView: MKMapView, context: Context) {

     }
 }
