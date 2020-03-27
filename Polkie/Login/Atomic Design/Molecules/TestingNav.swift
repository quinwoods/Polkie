//
//  TestingNav.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/25/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct TestingNav: View {
    init() {
        // 1.
        UINavigationBar.appearance().backgroundColor = .yellow
       
        // 2.
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.darkGray,
            .font : UIFont(name:"Papyrus", size: 40)!]
                
        // 3.
        UINavigationBar.appearance().titleTextAttributes = [
            .font : UIFont(name: "HelveticaNeue-Thin", size: 20)!]
    }
    var body: some View {
        VStack {
            
            NavigationView{
                ZStack {
                    TabView {
                             Text("Discover")
                                 .tabItem {
                                     Image("search").resizable().frame(width: 40, height: 40)
                             }
                             Text("Create")
                                 .tabItem {
                                     Image("plus").resizable()
                                     
                             }
                             Text("Data")
                                 .tabItem {
                                     Image("diagram")
                                     
                                     
                             }
                         }
                    
                    
                        .navigationBarTitle("Polkie", displayMode: .inline).edgesIgnoringSafeArea(.all)
                        .navigationBarItems(leading: Image("avatar"), trailing: Button(action: {print("hello")}) {
                            NavigationLink(destination: Anotherview()){
                                Image("send").foregroundColor(Color.black)
                            }
                        })
                        .font(.custom("fascinate-regular", size: 30))
                }
        }
        

  
    }
}

struct TestingNav_Previews: PreviewProvider {
    static var previews: some View {
        TestingNav()
    }
}
}
