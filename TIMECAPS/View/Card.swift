//
//  Card.swift
//  TIMECAPS
//
//  Created by Obed Willhem on 21/08/23.
//

import SwiftUI

struct CardView: View {
    
    @State private var isAnimating = false
    let story: Card
    
    var body: some View {
        ZStack {
            story.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(16)
                .padding(.bottom, 80)
                .background(Color.white)
                .cornerRadius(16)
        }
        .padding(4)
        .background(Color.white.opacity(0.2))
        .cornerRadius(16)
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
