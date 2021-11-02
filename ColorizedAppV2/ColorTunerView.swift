//
//  ColorTunerView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 02.11.2021.
//

import SwiftUI

struct ColorTunerView: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            ValueTextView(sliderValue: sliderValue)
            ValueSliderView(sliderValue: $sliderValue, textValue: $textValue, color: color)
            ValueTextFieldView(sliderValue: $sliderValue, textValue: $textValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}



struct ColorTunerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTunerView(sliderValue: .constant(90), color: .red)
    }
}
