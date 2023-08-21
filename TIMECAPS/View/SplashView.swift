//
//  Splash.swift
//  TIMECAPS
//
//  Created by Obed Willhem on 21/08/23.
//

import SwiftUI

struct Splash: View {
    @State private var rotationAngle: Angle = .degrees(0)
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                Color.black.opacity(0.2).edgesIgnoringSafeArea(.all)
                VStack(spacing: 32) {
                    ZStack(alignment: .topTrailing) {
                        Image("title1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width / 1.4)
                        ZStack {
                            Image("plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Image("plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .blur(radius: 12)
                        }
                        .frame(width: 60)
                        .opacity(0.4)
                        .rotationEffect(rotationAngle)
                        .accessibilityIdentifier("star")
                        .onAppear {
                            withAnimation(Animation.linear(duration: 8).repeatForever(autoreverses: false)) {
                                rotationAngle = .degrees(360)
                            }
                        }
                        .offset(x: -58 , y: 16)
                    }
                    NavigationLink(destination: ContentView()) {
                        ButtonNext(title: "START")
                    }
                }
                .padding(16)
            }
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
