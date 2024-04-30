//
//  MarqueeTestApp.swift
//  MarqueeTest
//
//  Created by James Truong on 4/29/24.
//

import SwiftUI

@main
struct MarqueeTestApp: App {
    
    @State var displayGlassBackgroundEffect = true
    var body: some Scene {
        let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
        WindowGroup {
            ContentView().frame(width: 400, height: 200)
                .glassBackgroundEffect(in: RoundedRectangle(cornerRadius: 20), displayMode:  displayGlassBackgroundEffect ? .always : .never)
                .onReceive(timer) { _ in
                    displayGlassBackgroundEffect.toggle()
                }
        }.windowStyle(.plain)
    }
}
