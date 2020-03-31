//
//  Messages.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/30/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Messages: View {
    var body: some View {
        NavigationView {
            List() {
             
                brandMessage(name: "Nike", time: "2hr")
                brandMessage(name: "Apple", time: "1d")
                brandMessage(name: "DJI", time: "3d")
                brandMessage(name: "Polkie", time: "1hr")
                brandMessage(name: "Apple")
                brandMessage(name: "Victoria", time: "4hr")
                brandMessage(name: "Apple")
                brandMessage(name: "Henny's", time: "10hr")
                brandMessage(name: "Titos", time: "3hr")
                brandMessage(name: "Apple", time: "6hr")
            }
            .navigationBarTitle("Messages")
        }
    }
}

struct Messages_Previews: PreviewProvider {
    static var previews: some View {
        Messages()
    }
}

struct brandMessage: View {
    var name: String = ""
    var time: String = "1hr"
    var body: some View {
        NavigationLink(destination: PackageMapView()) {
            HStack {
                Image("mail").resizable().frame(width: 14 , height: 10)
                Circle().frame(width: 60, height: 60)
                VStack(alignment: .leading) {
                    HStack {
                        Text(name)
                            .font(.headline)
                            .padding([.top, .leading, .bottom], 12.0)
                        
                        Spacer()
                        Text(time)
                    }
                    Text("Looks like you have another deal! ...").padding([.leading, .bottom], 6.0)
                    
                }
              
            }
        
        }
    }
}
