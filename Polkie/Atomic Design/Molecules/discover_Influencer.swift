//
//  discover_Influencer.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/26/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct discover_Influencer: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 160, height: 160).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: 10)
            Text("Influencers")
        }
    }
}

struct discover_Influencer_Previews: PreviewProvider {
    static var previews: some View {
        discover_Influencer()
    }
}
