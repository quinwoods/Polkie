//
//  create_camera.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/27/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct CaptureImageView {
    
    /// MARK: - Properties
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }
}

extension CaptureImageView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        
        //    picker.sourceType = .camera
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<CaptureImageView>) {
        
    }
}

struct create_camera: View {
    
    @State var image: Image? = nil
    @State var showCaptureImageView: Bool = false
    @State var buttonChoice: Image? = Image("plus")
    
    var body: some View {
        GeometryReader { screen in
            ZStack {
                
               
                self.image?.resizable()
                    .frame(width: ((screen.size.width/3)-1), height: ((screen.size.width/3)-1))
                Button(action: {
                               self.showCaptureImageView.toggle()
                    
                           }) {
                            if (self.image == nil) {
                                Image("plus").frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1))
                            } else {
                                Image("edit").frame(width: ((screen.size.width/3)-1) , height: ((screen.size.width/3)-1))                  }
                           }
                
                
                if (self.showCaptureImageView) {
                    CaptureImageView(isShown: self.$showCaptureImageView, image: self.$image)
                }
            }.frame(alignment: .trailing)
        }
    }
}


struct Photoss: View {
    @State var changed = false
    
    var body: some View {
        GeometryReader{ screen in
            ZStack {
                
                //Row Three
                ZStack {
                    create_camera().offset(x: self.changed ? 0 : screen.size.width/3)
                }.onTapGesture {
                    self.changed.toggle()
                }
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

struct create_camera_Previews: PreviewProvider {
    static var previews: some View {
        create_camera()
    }
}



