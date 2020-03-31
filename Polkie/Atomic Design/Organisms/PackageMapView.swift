//
//  SwiftUIView.swift
//  designs
//
//  Created by Quin’darius Lyles-Woods on 3/7/20.
//  Copyright © 2020 Quin’darius Lyles-Woods. All rights reserved.
//

import SwiftUI
struct PackageMapView: View {
    @State var isShowingScanner = false
    @State var showmap = false
    @State var cardPostion = CGSize.zero
    @State var cardMoving = false
    
    func showMap(){
        showmap.toggle()
    }
    var body: some View {
        ZStack {
            Image("clouds")
                .offset(y: showmap ? -350 : -150).animation(.spring())
            Image("cityplants").resizable().frame(width: 414, height: 400).animation(.spring())
                .offset(y: showmap ? -200 : 210)
            PackageDetail()
                .frame(height: 500)
                .padding(.top, 8)
                .cornerRadius(20)
                .offset(y: showmap ?  200:600)
                .animation(.spring())
            
            PackageCardView(company: company(name: "Product Review Video", location: .init(latitude: 29.7686, longitude: -95.3960), payment: 5), buttonone: showMap, buttonone_name: showmap ? "hide me" : "show me", buttontwo: {
                print("hello world")
            }, buttontwo_name: "add package", color: Color(#colorLiteral(red: 1, green: 0.6549019608, blue: 0.5411764706, alpha: 1))).offset(y: -40).scaleEffect(0.9).rotationEffect(Angle(degrees: 10)).rotationEffect(Angle(degrees: (cardMoving || showmap) ? -10 : 0))
                .offset(x:showmap ? 0:cardPostion.width, y: showmap ? -150 : cardPostion.height).offset(y: cardMoving ? -100 : 0)
                
              .animation(Animation.easeInOut(duration: 0.9))
            
            
            PackageCardView(company: company(name: "Story Post", location: .init(latitude: 29.7696, longitude: -95.3947), payment: 10), buttonone: showMap, buttonone_name: showmap ? "hide me" : "show me", buttontwo: {
                print("hello world")
            }, buttontwo_name: "add package", color: Color(#colorLiteral(red: 0.3019607843, green: 0.2078431373, blue: 0.4431372549, alpha: 1))).offset(y: -20).scaleEffect(0.95).rotationEffect(Angle(degrees: 5)).rotationEffect(Angle(degrees: (cardMoving || showmap) ? -5 : 0))
                .offset(x:showmap ? 0:cardPostion.width, y: showmap ? -125 : cardPostion.height).offset(y: cardMoving ? -50 : 0)
                
              .animation(Animation.easeInOut(duration: 0.7))
            
            PackageCardView(company: company(name: "Profile Post", location: .init(latitude: 29.7700, longitude: -95.3963), payment: 120), buttonone: showMap, buttonone_name: showmap ? "hide" : "Details", buttontwo: {
             
            }, buttontwo_name: "Accept", color: Color(#colorLiteral(red: 0.6235294118, green: 0.7568627451, blue: 0.8156862745, alpha: 1))).offset(x:showmap ? 0:cardPostion.width, y: showmap ? -100 : cardPostion.height).animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0)).gesture(DragGesture().onChanged{
                
                value in
                self.cardPostion = value.translation
                
                self.cardMoving = true
                
            }.onEnded{
                value in
                self.cardPostion = .zero
                
                self.cardMoving = false
                })
            
        }
        
    }
}

struct PackageMapView_Previews: PreviewProvider {
    static var previews: some View {
        PackageMapView()
    }
}

