//
//  home_profilePicture.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/28/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct home_profilePicture: View {
    var body: some View {
        ZStack {
            home_photos().offset(y: 120)
            Image("oval1").offset(y: -250)
            Image("oval2").offset(y: -250)
            Circle().frame(width: 68, height: 68).offset(x: -40, y: -275).foregroundColor(Color(#colorLiteral(red: 0.7098039216, green: 0.9176470588, blue: 0.8431372549, alpha: 1)))
            Circle().frame(width: 32, height: 32).offset(x: 50, y: -275).foregroundColor(Color(#colorLiteral(red: 0.7803921569, green: 0.8078431373, blue: 0.9176470588, alpha: 1)))
            Image("girlwithcam").resizable().frame(width: 120, height: 120).clipShape(Circle()).offset(y: -230)
            Circle().frame(width: 54, height: 54).offset(x: 40, y: -180).foregroundColor(Color(#colorLiteral(red: 0.8862745098, green: 0.9411764706, blue: 0.8, alpha: 1)))
            Circle().frame(width: 32, height: 32).offset(x: -40, y: -180).foregroundColor(Color(#colorLiteral(red: 1, green: 0.8549019608, blue: 0.7568627451, alpha: 1)))
            Text("Sydney S.").offset(y: -125)
        }
    }
}

struct home_profilePicture_Previews: PreviewProvider {
    static var previews: some View {
        home_profilePicture()
    }
}
