//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Rhys Powell on 2/11/20.
//

import SwiftUI

class TemperatureConverter: ObservableObject {
    @Published var temperatureInCelsius: Float = 0

    var temperatureInFahrenheit: Float {
        get { temperatureInCelsius * (9 / 5) + 32 }
        set { temperatureInCelsius = (newValue - 32) * (5 / 9) }
    }
}

struct ContentView: View {
    @ObservedObject var converter = TemperatureConverter()

    var body: some View {
        HStack {
            TextField("0", value: $converter.temperatureInCelsius, formatter: NumberFormatter())
                .multilineTextAlignment(.trailing)
                .frame(width: 50)
            Text("°C")
            Text("=")
            TextField("°F", value: $converter.temperatureInFahrenheit, formatter: NumberFormatter())
                .multilineTextAlignment(.trailing)
                .frame(width: 50)
            Text("°F")
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
