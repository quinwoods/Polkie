//
//  Data.swift
//  Polkie
//
//  Created by Quin’darius Lyles-Woods on 3/26/20.
//  Copyright © 2020 Polkie. All rights reserved.
//

import SwiftUI

struct Data: View {
    var body: some View {
        VStack( spacing: 16) {
            HStack {
                Image("data").offset(x: -120)
              
            }
                
            data_portanal()
            ZStack {
                data_likes().offset(x: -120)
                data_comments()
                data_tags().offset(x: 120)
            }
            data_engagement()
            HStack {
                data_followers().offset(x: -6)
                data_earnings().offset(x: 6)
            }
            
        }
    }
}

struct Data_Previews: PreviewProvider {
    static var previews: some View {
        Data()
    }
}
