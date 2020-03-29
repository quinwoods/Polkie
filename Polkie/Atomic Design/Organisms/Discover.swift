//
//  Discover.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/26/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Discover: View {
    @State var packagesPressed = false
    var body: some View {
        VStack {
         
            Image("discover").offset(x: -80)
                    
             
            DiscoverMap().padding()
            HStack {
                discover_Influencer().offset(x: -6)
                discover_marketers().offset(x: 6)
            }
            .padding(.horizontal)
          
            if packagesPressed {
                PackageMapView()
            } else {
                discover_packages().offset(y: 12).onTapGesture {
                    self.packagesPressed.toggle()
                }
            }
        }
    }
}

struct Discover_Previews: PreviewProvider {
    static var previews: some View {
        Discover()
    }
}
