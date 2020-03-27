//
//  discover_marketers.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/26/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct discover_marketers: View {
    var body: some View {
          ZStack {
                  Rectangle().frame(width: 160, height: 160).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: 10)
                  Text("Marketers")
              }
    }
}

struct discover_marketers_Previews: PreviewProvider {
    static var previews: some View {
        discover_marketers()
    }
}
