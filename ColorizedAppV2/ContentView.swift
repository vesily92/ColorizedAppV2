//
//  ContentView.swift
//  ColorizedAppV2
//
//  Created by Василий Пронин on 30.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            ColorRectangleView(
                color: Color(red: redValue / 255,
                             green: greenValue / 255,
                             blue: blueValue / 255)
            )
            ColorHStackView(color: .red, value: $redValue)
                .focused($isFocused)
            ColorHStackView(color: .green, value: $greenValue)
                .focused($isFocused)
            ColorHStackView(color: .blue, value: $blueValue)
                .focused($isFocused)

            Spacer()
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .keyboard) {
                Button("Done") {
                    isFocused = false
                }
            }
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
