//
//  home_photos.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/28/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct home_photos: View {
    var body: some View {
        VStack(spacing: 1) {
            HStack( spacing: 1) {
                create_camera()
                create_camera()
                create_camera()
            }
            HStack( spacing: 1) {
                create_camera()
                create_camera()
                create_camera()
            }
            HStack( spacing: 1) {
                create_camera()
                create_camera()
                create_camera()
            }
        }
    }
}

struct home_photos_Previews: PreviewProvider {
    static var previews: some View {
        home_photos()
    }
}

//let images : Array<image> = []





var image1 : Image?
var image2 : Image?
var image3 : Image?
var image4 : Image?
var image5 : Image?
var image6 : Image?
var image7 : Image?
var image8 : Image?
var image9 : Image?
var image10 : Image?

//image1 = Image("image1")
//image2 = Image("image1")
//image3 = Image("image1")
//image4 = Image("image1")
//image5 = Image("image1")
//image6 = Image("image1")
//image7 = Image("image1")
//image8 = Image("image1")
//image9 = Image("image1")
//image10 = Image("image1")
