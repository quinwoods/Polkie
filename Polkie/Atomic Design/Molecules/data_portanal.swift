//
//  data_portanal.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/27/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct data_portanal: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 350, height: 160).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: 10)
            Text("Polkie Analysis")
        }


    }
}

struct data_portanal_Previews: PreviewProvider {
    static var previews: some View {
        data_portanal()
    }
}
