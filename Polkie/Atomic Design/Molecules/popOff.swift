//
//  popOff.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/26/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct popOff: View {
    @State var message : Bool
    
    var body: some View {
      
        ZStack {
            if message{
                           Rectangle()
                       }
            Text("d").onTapGesture {
                self.message.toggle()
            }
           
        }
        
    }
}

struct popOff_Previews: PreviewProvider {
    static var previews: some View {
        popOff(message: false)
    }
}
