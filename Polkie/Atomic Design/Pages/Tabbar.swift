//
//  Tabbar.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/25/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Tabbar: View {
    @State var sendPressed = false
    @State var profilePressed = false
    var body: some View {
        ZStack {
            TabView {
                
                walletPage().tabItem{
                                 Image("wallet")
                    Text("Earnings")
                              }
            
                profilePage()
                    .tabItem {
                        Image("home")
                        Text("Home")
                        
                }
                Messages()
                    .tabItem {
                        Image("mail")
                        Text("Message")
                }
              
            }
            
//            VStack {
//                           ZStack {
//                               Rectangle().frame(width: 425, height: 100).edgesIgnoringSafeArea(.all).foregroundColor(Color.red)
//                               Image("titlelogo").resizable().frame(width: 120, height: 40).offset(y: -30)
//                               Image("bell").offset(x: 150,y: -30).onTapGesture {
//                                self.sendPressed.toggle()
//                               }
//                               Image("avatar").offset(x: -150,y: -30).onTapGesture {
//                                   self.profilePressed = true
//                               }
//
//
//                           }
//                          Spacer()
//                VStack {
//                               if sendPressed {
//                                   Messages().frame(width: 400)                } else {
//                                   /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
//                               }
//                           }
//                       }
            
            if profilePressed {
                Rectangle().frame(width: 250, height: 400).onTapGesture {
                    self.profilePressed = false
                }
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
            
           
           
        }
    }
    
    struct Tabbar_Previews: PreviewProvider {
        static var previews: some View {
            Tabbar()
        }
    }
}
