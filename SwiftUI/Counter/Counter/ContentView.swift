//
//  ContentView.swift
//  Counter
//
//  Created by Rhys Powell on 2/11/20.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0

    var body: some View {
        HStack {
            Text(String(count))
                .frame(width: 50, alignment: .leading)
            Button("Count", action: { count += 1 })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
