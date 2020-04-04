//
//  profilePage.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 4/3/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct profilePage: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 24){
                        Text("Makeup").font(.system(size: 21))
                        Text("Hair Products").font(.system(size: 24))
                        Text("Clothing").font(.system(size: 21))
                        Text("Self Care").font(.system(size: 21))
                        Text("Decor").font(.system(size: 21))
                        Text("➕ Add Interest").font(.system(size: 24)).opacity(0.5)
                            Text("")
                                                    
                        .navigationBarTitle("Hello, Julie")
                            .navigationBarItems(trailing: Circle().frame(width: 60, height: 60).offset(y: 45))
                    }
                    .padding(.leading)
                }.padding()
                Rectangle().frame(width: 415, height: 300).opacity(0.2)
                Spacer()
                NavigationView{
                    List(){
                        HStack {
                            Image("instagramicon").resizable().frame(width: 40, height: 40)
                            Text("Instagram")
                        }
                        HStack {
                            Image("snapchaticon").resizable().frame(width: 40, height: 40)
                            Text("Snapchat")
                        }
                        HStack {
                            Image("facebook").resizable().frame(width: 40, height: 40)
                            Text("Facebook")
                        }
                        HStack {
                            Text("➕")
                            Text("connect social media")
                        }.opacity(0.5)
                    }.navigationBarTitle("Accounts")
                }.padding(.leading).offset(y: -20)
            }
            }
        }
}

struct profilePage_Previews: PreviewProvider {
    static var previews: some View {
        profilePage()
    }
}
