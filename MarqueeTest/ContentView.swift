//
//  ContentView.swift
//  MarqueeTest
//
//  Created by James Truong on 4/29/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State var displayGlassBackgroundEffect = true
    var body: some View {
        VStack {
            let titleFont = UIFont.systemFont(ofSize: 40, weight: .medium)
            MarqueeTextView(customFont: titleFont, customText:  "Marquee labelllllllllllllllllllllllllllaaaaaaaaaa")
        }
    }
    
}

#Preview(windowStyle: .automatic) {
    ContentView().frame(width: 400, height: 200)
}
