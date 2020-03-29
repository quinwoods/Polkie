//
//  data_likes.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/27/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct data_likes: View {
    @State var isPressed = false
    
    var body: some View {
              ZStack {
                Rectangle().frame(width: isPressed ? 330 : 100, height: isPressed ? 330 : 100).cornerRadius(20).foregroundColor(Color.pink).shadow(radius: isPressed ? 50 : 10)
                VStack {
                    Text("Likes").offset(y: isPressed ? -140 : 0 )
                }
              }.offset(x: isPressed ? -120 : 0).onTapGesture {
                self.isPressed.toggle()
                print(self.isPressed)
        }
        
    }
}

struct data_likes_Previews: PreviewProvider {
    static var previews: some View {
        data_likes()
    }
}
