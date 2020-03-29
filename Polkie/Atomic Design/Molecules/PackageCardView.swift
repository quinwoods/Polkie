//
//  PackageCardView.swift
//  designs
//
//  Created by Quin’darius Lyles-Woods on 3/7/20.
//  Copyright © 2020 Quin’darius Lyles-Woods. All rights reserved.
//

import SwiftUI

struct PackageCardView: View {
    
    var company: company
    
    var buttonone: () ->Void
    
    var buttonone_name: String
    
    var buttontwo: () ->Void
    
 var buttontwo_name: String
    
    var color: Color
    
        
    
    
    
    var body: some View {
        VStack {
            VStack {
                Text(company.name).foregroundColor(Color.white).multilineTextAlignment(.center).padding()
                Text("Amount to be paid: $" + String(company.payment)).foregroundColor(.white)
            }
            Spacer()
            HStack {
                Button_medium(function: self.buttonone, action: buttonone_name)
                
                Spacer()
                Button_medium(function: self.buttontwo, action: buttontwo_name)
            }.padding()
        } .frame(width: 340, height: 220)
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius:  20, style: .continuous))
    }
}

//struct PackageCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        PackageCardView()
//    }
//}
