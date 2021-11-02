//
//  ColorFieldView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 30.10.2021.
//

import SwiftUI

struct ColorFieldView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(height: 150)
            .cornerRadius(15)
            .shadow(color: Color(red: red / 255, green: green / 255, blue: blue / 255), radius: 10, x: 2, y: 2)
    }
}

struct ColorRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorFieldView(red: 90, green: 90, blue: 90)
    }
}
