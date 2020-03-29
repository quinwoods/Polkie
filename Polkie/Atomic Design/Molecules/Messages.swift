//
//  Messages.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/25/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Messages: View {
    var body: some View {
        VStack {
           TabView {
                      Text("Friends Chat")
                          .tabItem {
                              Image("search").resizable().frame(width: 40, height: 40)
                            Text("Influencers")
                      }
                      Text("Buisness Chat")
                          .tabItem {
                              Image("plus").resizable()
                            Text("Marketers")
                              
                      } 
                  }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}
}
