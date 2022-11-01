//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Sebastien REMY on 01/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
                      Text("Hello, world!")
            .frame(width: 300, height: 300, alignment: .topLeading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
