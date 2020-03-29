//
//  Company.swift
//  Lavendale
//
//  Created by Quin’darius Lyles-Woods on 3/22/20.
//  Copyright © 2020 Lavendale. All rights reserved.
//

import SwiftUI
import CoreLocation


struct company: Identifiable {
    var id = UUID()
    var name: String
    var location: CLLocationCoordinate2D
    var payment: Int
}

