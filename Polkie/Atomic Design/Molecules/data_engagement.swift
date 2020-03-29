//
//  data_engagement.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/27/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct data_engagement: View {
    var body: some View {
               ZStack {
                   Rectangle().frame(width: 350, height: 100).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: 10)
                Text("Engagement")
               }
    }
}

struct data_engagement_Previews: PreviewProvider {
    static var previews: some View {
        data_engagement()
    }
}
