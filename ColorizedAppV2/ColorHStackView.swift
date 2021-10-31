//
//  ColorSliderView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 30.10.2021.
//

import SwiftUI

struct ColorHStackView: View {
    
    let color: Color
    
    @Binding var value: Double

    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 40, alignment: .leading)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            TextField("\(lround(value))", value: $value, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(width: 50)
                .keyboardType(.numberPad)
        }
    }
}

