//
//  Onboarding.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/17/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        ZStack {
            Rectangle().edgesIgnoringSafeArea(.all).frame(width: 415, height: 700).offset(y: -150).foregroundColor(Color(#colorLiteral(red: 0.9215686275, green: 0.9607843137, blue: 0.9803921569, alpha: 1)))
            VStack {
                Image("Bitmap").resizable().frame(width: 322, height: 123).offset(y: -100)
                Image("celeb").resizable().frame(width: 354, height: 325)
                Text("make money branding yourself").offset(y: 75)
                Lbutton().offset(y: 100)
                Text("skip").offset(y: 125)
            }
        }    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}

struct Lbutton: View {
    var body: some View {
        ZStack {
            
            Rectangle().cornerRadius(27.5).frame(width: 300, height: 55).foregroundColor(Color(#colorLiteral(red: 0.2980392157, green: 0.2078431373, blue: 0.4470588235, alpha: 1))).shadow(radius: 30)
            Text("Get Started").foregroundColor(.white)
        }
    }
}
