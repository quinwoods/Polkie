//
//  data_followers.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/27/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct data_followers: View {
    var body: some View {
                ZStack {
            Rectangle().frame(width: 160, height: 160).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: 10)
            Text("Followers")
        }

    }
}

struct data_followers_Previews: PreviewProvider {
    static var previews: some View {
        data_followers()
    }
}
