//
//  SwiftUIView.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/30/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct PackageDetail: View {
    var body: some View {
        ZStack {
            VStack {
                Information(fieldOne: "Product", fieldTwo: "Some Product")
                Information(fieldOne: "Timeline", fieldTwo: "Time for it to be completed")
            }
        }.frame(width: 375, height: 500)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PackageDetail()
    }
}

struct Information: View {
    var fieldOne : String
    var fieldTwo : String
    var body: some View {
        HStack {
            Text(fieldOne)
            Spacer()
            Text(fieldTwo)
        }
        .padding(.all)
    }
}
