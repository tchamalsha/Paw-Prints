//
//  Color.swift
//  PawPrints
//
//  Created by Tharushi Chamalsha on 2023-11-23.
//

import Foundation
import SwiftUI

extension Color{
    static let theme = ColorThems()
}

struct ColorThems{
    let accent = Color("AccentColor")
    let primary = Color("PrimaryColor")
    let lightPrimary = Color("LightPrimary")
    let secondary = Color("SecondaryColor")
}
