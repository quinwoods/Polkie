//
//  Facebooksignin.swift
//  Stacked
//
//  Created by Quin’darius Lyles-Woods on 2/28/20.
//  Copyright © 2020 Quin’darius Lyles-Woods. All rights reserved.
//

import SwiftUI
import FirebaseUI
import FBSDKLoginKit
import Firebase


struct Facebooksignin: View {
    var body: some View {
        login().frame(width: 250, height: 40)
        .cornerRadius(20)
    }
}

struct Facebooksignin_Previews: PreviewProvider {
    static var previews: some View {
        Facebooksignin()
    }
}
struct login : UIViewRepresentable {
   
    
    func makeCoordinator() -> login.Coordinator {
        return login.Coordinator()
    }
    
    func makeUIView(context: UIViewRepresentableContext<login>) -> FBLoginButton  {
        let button = FBLoginButton()
        button.permissions = ["email"]
        button.delegate = context.coordinator
        return button
    }
    func updateUIView(_ uiView: FBLoginButton, context: UIViewRepresentableContext<login>) {
        
    }
    class  Coordinator : NSObject , LoginButtonDelegate{
        func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
            if error != nil{
                print((error?.localizedDescription)!)
                return
            }
            if AccessToken.current != nil{
                let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
                
                Auth.auth().signIn(with: credential){(res,er) in
                    if er != nil{
                        print((er?.localizedDescription)!)
                        return
                    }
                    
                    print("success")
                    print(credential)
                }
            }
        }
        
        func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
            try! Auth.auth().signOut()
        }
        
        
    }
}
