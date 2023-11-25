//
//  View.swift
//  PawPrints
//
//  Created by Tharushi Chamalsha on 2023-11-24.
//

import Foundation
import SwiftUI

extension View{
    func hAlign(_ alignment: Alignment)->some View{
        self
            .frame(maxWidth: .infinity,alignment: alignment)
    }
    func vAlign(_ alignment: Alignment)->some View{
        self
            .frame(maxHeight: .infinity,alignment: alignment)
    }
    
    //MARK: Custom Border View With padding
    func border(_ width:CGFloat,_ color:Color)->some View{
        self
            .padding(.horizontal,15)
            .padding(.vertical,10)
            .background{
                RoundedRectangle(cornerRadius: 5,style: .continuous)
                    .stroke(color,lineWidth: width)
            }
            .frame(width: 300,height: 50)
    }
}
