//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Sebastien REMY on 01/11/2022.
//

import SwiftUI

extension VerticalAlignment {
    struct MidAccountAndName: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.top]
        }
    }
    
    static let midAcoundAndName = VerticalAlignment(MidAccountAndName.self)
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
//            .position(x: 100, y: 100)
            .offset(x: 100, y: 100)
            .background(.red)
            .frame(width: 500, height: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
