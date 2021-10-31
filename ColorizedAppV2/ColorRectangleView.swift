//
//  ColorRectangleView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 30.10.2021.
//

import SwiftUI

struct ColorRectangleView: View {
    
    let color: Color
    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .cornerRadius(20)
            .frame(height: 150)
    }
}

struct ColorRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorRectangleView(color: Color(red: 200 / 255, green: 100 / 255, blue: 50 / 255))
    }
}
