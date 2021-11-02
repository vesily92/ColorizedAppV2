//
//  SliderTextFieldView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 02.11.2021.
//

import SwiftUI

struct SliderValueTFView: View {
    
    @Binding var value: Double
    @Binding var textFieldValue: String
    
    @State private var isPresented = false
    
    var body: some View {
        TextField("", text: $textFieldValue) { _ in
            checkInput()
        }
        .textFieldStyle(.roundedBorder)
        .frame(width: 40, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .keyboardType(.numberPad)
        .alert("Something went wrong...", isPresented: $isPresented, actions: {}) {
            Text("Only use numbers between 0 and 255")
        }
    }
}

extension SliderValueTFView {
    private func checkInput() {
        if let input = Int(textFieldValue), (0...255).contains(input) {
            value = Double(input)
            return
        }
        isPresented.toggle()
        value = 0
    }
}

struct SliderTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueTFView(value: .constant(90), textFieldValue: .constant("90"))
    }
}
