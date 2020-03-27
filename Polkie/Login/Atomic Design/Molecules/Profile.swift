//
//  Profile.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/25/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 50, height: 50)
            NavigationView{
                NavigationLink(destination: Anotherview()){
                    Image("send").foregroundColor(Color.black).offset(y: -45)
                }
            }
            .frame(width: 50, height: 50)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

struct Anotherview: View {
    var body: some View{
        Text("Hello")
    }
}
