//
//  ValueTextFieldView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 02.11.2021.
//

import SwiftUI

struct ValueTextFieldView: View {
    
    @Binding var sliderValue: Double
    @Binding var textValue: String
    
    @State private var isPresented = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            checkInput()
        }
        .textFieldStyle(.roundedBorder)
        .frame(width: 60, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .keyboardType(.decimalPad)
        .alert("Oops!", isPresented: $isPresented, actions: {}) {
            Text("Only use numbers between 0 and 255")
        }
    }
}

extension ValueTextFieldView {
    private func checkInput() {
        if let input = Int(textValue), (0...255).contains(input) {
            sliderValue = Double(input)
            return
        }
        isPresented.toggle()
        sliderValue = 0
        textValue = "0"
    }
}

struct SliderTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ValueTextFieldView(sliderValue: .constant(90), textValue: .constant("90"))
    }
}
