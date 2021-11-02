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
    
    private let gradientColorTop = Color(red: 200 / 255, green: 110 / 255, blue: 200 / 255)
    private let gradientColorBottom = Color(red: 240 / 255, green: 100 / 255, blue: 60 / 255)
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [gradientColorTop, gradientColorBottom], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                ColorFieldView(red: redValue, green: greenValue, blue: blueValue)
                VStack(spacing: 20) {
                    ColorTunerView(sliderValue: $redValue, color: .red)
                    ColorTunerView(sliderValue: $greenValue, color: .green)
                    ColorTunerView(sliderValue: $blueValue, color: .blue)
                }
                Spacer()
            }
            .focused($isFocused)
            .onTapGesture { hideKeyboard() }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isFocused = false
                    }
                }
            }
        .padding()
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
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}
