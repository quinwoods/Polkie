//
//  Tags.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/27/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Tags: View {
    var body: some View {
           ZStack {
                    Rectangle().frame(width: 100, height: 100).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: 10)
                        Text("Likes")
        }
    }
}

struct Tags_Previews: PreviewProvider {
    static var previews: some View {
        Tags()
    }
}
