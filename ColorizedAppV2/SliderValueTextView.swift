//
//  SliderValueTextView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 02.11.2021.
//

import SwiftUI

struct SliderValueTextView: View {
    
    let sliderValue: Double
    
    var body: some View {
        Text("\(lround(sliderValue))")
            .frame(width: 40, alignment: .leading)
    }
}

struct SliderValueTextView_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueTextView(sliderValue: 90)
    }
}
