//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Victor Uriarte on 09/04/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var red = 0.0
    @State var green = 0.0
    @State var blue = 0.0
    
    var body: some View {
        VStack{
            Text("Colour Picker")
                .padding()
                .font(.largeTitle)
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: red, green: green, blue: blue, opacity: 1.0))
                .font(.largeTitle)
            ColorSliderView(colorValue: $red, color: .red)
            ColorSliderView(colorValue: $green, color: .green)
            ColorSliderView(colorValue: $blue, color: .blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
