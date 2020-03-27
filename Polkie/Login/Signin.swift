//
//  Signin.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/17/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Signin: View {
    @State var name : String
    @State var password: String
    var body: some View {
          ZStack {
                  Rectangle().edgesIgnoringSafeArea(.all).frame(width: 415, height: 700).offset(y: -150).foregroundColor(Color(#colorLiteral(red: 0.9215686275, green: 0.9607843137, blue: 0.9803921569, alpha: 1)))
                  VStack {
                      Image("Bitmap").resizable().frame(width: 322, height: 123).offset(y: -50)
                    ZStack {
                        Rectangle().frame(width: 351, height: 356).cornerRadius(44).foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).shadow(color: .black, radius: 10, x: 0, y: 15)
                        VStack {
                            Text("Sign in").offset(y: -60)
                            Text("if you have already registered").padding().offset(y: -60)
                            TextField("email/username", text: $name).overlay(RoundedRectangle(cornerRadius: 28).stroke(Color.gray, lineWidth: 2).frame(height: 56)).frame(width: 300).padding().offset(y: -50).multilineTextAlignment(.center)
                            SecureField("password", text: $password ).overlay(RoundedRectangle(cornerRadius: 28).stroke(Color.gray, lineWidth: 2).frame(height: 56)).frame(width: 300).padding().offset(y: -25).multilineTextAlignment(.center)
                        }
                        
                    }
                      
                      Sbutton().offset(y: -40)
                      Text("skip").offset(y: 125)
                  }
            Facebooksignin().offset(y: 300)
              }
    }
}

struct Signin_Previews: PreviewProvider {
    static var previews: some View {
        Signin(name: "", password: "")
    }
}

struct Sbutton: View {
    var body: some View {
        ZStack {
            
            Rectangle().cornerRadius(27.5).frame(width: 200, height: 55).foregroundColor(Color(#colorLiteral(red: 0.2980392157, green: 0.2078431373, blue: 0.4470588235, alpha: 1))).shadow(radius: 30)
            Text("Sign in").foregroundColor(.white)
        }
    }
}
