//
//  data_earnings.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/27/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct data_earnings: View {
    var body: some View {
                ZStack {
            Rectangle().frame(width: 160, height: 160).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: 10)
            Text("Earnings")
        }

    }
}

struct data_earnings_Previews: PreviewProvider {
    static var previews: some View {
        data_earnings()
    }
}
