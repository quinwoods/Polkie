//
//  Photos.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/29/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Photos: View {
    
    var body: some View {
        GeometryReader{ screen in
            ZStack {
                //Row Three
                create_camera().offset(x: screen.size.width/3)
                Rectangle().frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1)).offset(x: screen.size.width/3).offset(y: ((screen.size.width/3)))
                Rectangle().frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1)).offset(x: screen.size.width/3).offset(y: (screen.size.width/3)*2)
                //Row Two
                Rectangle().frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1))
                Rectangle().frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1)).offset(y: ((screen.size.width/3)))
                 Rectangle().frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1)).offset(y: (screen.size.width/3)*2)
                //Row One
                Rectangle().frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1)).offset(x: -screen.size.width/3)
                Rectangle().frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1)).offset(x: -screen.size.width/3,y: screen.size.width/3)
                Rectangle().frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1)).offset(x: -screen.size.width/3,y: (screen.size.width/3)*2)
            }
            
        }
        
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
