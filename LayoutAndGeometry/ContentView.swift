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
        HStack (alignment: .midAcoundAndName) {
            VStack {
                Text("@twotraws")
                    
                Image("paul-hudson")
                    .resizable()
                    .frame(width: 64, height: 64)
                    .alignmentGuide(.midAcoundAndName) { d in d[VerticalAlignment.center]
                    }
            }
            VStack {
                Text("Full name:")
                Text("Paul Hudson")
                    .font(.largeTitle)
            }
            
            .alignmentGuide(.midAcoundAndName) { d in d[VerticalAlignment.center] }
        }
        .frame(width: 400, height: 800)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
