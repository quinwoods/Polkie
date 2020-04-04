//
//  walletPage.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 4/3/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct walletPage: View {
    var body: some View {
        NavigationView {
            VStack{
//                HStack {
//                    Text("My Cash").font(.title).padding()
//                    Spacer()
//                    Circle().frame(width: 60, height: 60).padding()
//                }
                Spacer()
                Text("$XXX").font(.system(size: 96)).padding(.bottom, 60)
                
                Button(action: {}) {
                    Text("Cash Out").padding(21.0).overlay(Capsule(style: .continuous).stroke(lineWidth: 3)).foregroundColor(Color.black)
                }
                Spacer()
                NavigationView{
                    List(){
                        wellsfargo()
                        cashapp()
                        addview()
                    }.navigationBarTitle("Payment Options")
                }.frame(height: 300)
                
                Spacer()
                
                
            }.navigationBarTitle("Earnings")
                .navigationBarItems(trailing: Circle().frame(width: 60, height: 60).offset(y: 45))
                
            
        }
    }
}

struct walletPage_Previews: PreviewProvider {
    static var previews: some View {
        walletPage()
    }
}

struct wellsfargo: View {
    var body: some View {
        HStack {
            Text("🏦")
                .font(.largeTitle)
            Text("Wells Fargo").font(.headline)
        }
    }
}

struct cashapp: View {
    var body: some View {
        HStack {
            Text("💰")
                .font(.largeTitle)
            Text("Cash App").font(.headline)
        }
    }
}

struct addview: View {
    var body: some View {
        HStack {
            Text("➕")
                .font(.largeTitle)
            Text("add payment method")
        }.opacity(0.5)
    }
}
