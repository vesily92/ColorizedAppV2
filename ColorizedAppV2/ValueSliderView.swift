//
//  ValueSliderView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 02.11.2021.
//

import SwiftUI

struct ValueSliderView: View {
    
    @Binding var sliderValue: Double
    @Binding var textValue: String
    
    let color: Color
    
    var body: some View {
        
        Slider(value: $sliderValue, in: 0...255, step: 1)
            .tint(color)
            .onChange(of: sliderValue) { newValue in
                textValue = "\(lround(newValue))"
            }
        
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        ValueSliderView(sliderValue: .constant(90), textValue: .constant("90"), color: .red)
    }
}
