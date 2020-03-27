//
//  DiscoverMap.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/26/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct DiscoverMap: View {
    var body: some View {
        MapView().frame(width: 350, height: 250).cornerRadius(20).shadow(radius: 20)
        
    }
}

struct DiscoverMap_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverMap()
    }
}
