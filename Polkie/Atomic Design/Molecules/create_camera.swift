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
        ZStack {
            
           
            image?.resizable()
                .frame(width: 124, height: 124)
            Button(action: {
                           self.showCaptureImageView.toggle()
                
                       }) {
                        if (image == nil) {
                            Image("plus").frame(width: 124, height: 124)
                        } else {
                            Image("edit").frame(width: 124, height: 124)                        }
                       }
            
            
            if (showCaptureImageView) {
                CaptureImageView(isShown: $showCaptureImageView, image: $image)
            }
        }
    }
}

struct create_camera_Previews: PreviewProvider {
    static var previews: some View {
        create_camera()
    }
}



