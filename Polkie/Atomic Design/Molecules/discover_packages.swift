//
//  discover_packages.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/26/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct discover_packages: View {
    var body: some View {
          ZStack {
                  Rectangle().frame(width: 350, height: 100).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: 10)
                  Text("Packages")
              }
    }
}

struct discover_packages_Previews: PreviewProvider {
    static var previews: some View {
        discover_packages()
    }
}
