//
//  ValueTextView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 02.11.2021.
//

import SwiftUI

struct ValueTextView: View {
    
    let sliderValue: Double
    
    var body: some View {
        
        Text("\(lround(sliderValue))")
            .bold()
            .frame(width: 60, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct SliderValueTextView_Previews: PreviewProvider {
    static var previews: some View {
        ValueTextView(sliderValue: 90)
    }
}
