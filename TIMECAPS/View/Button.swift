//
//  View.swift
//  TIMECAPS
//
//  Created by Obed Willhem on 21/08/23.
//

import SwiftUI

struct ButtonNext: View {
    @State private var isAnimating = false
    var title : String

    var body: some View {
        ZStack {
            Text(title)
                .buttonText()
                .foregroundColor(.white)
                .padding(.vertical, 16)
                .padding(.horizontal)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .cornerRadius(16)
                .offset(y: isAnimating ? 8 : 0)
                .shadow(color: Color.orange.opacity(0.8),
                    radius: 0, y: isAnimating ? 0 : 8)
                .shadow(radius: 0, y: isAnimating ? 0 : 0)
            
            // TODO: Animation when clicked 👇
//                .onTapGesture {
//                    isAnimating.toggle()
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                        isAnimating.toggle()
//                    }
//                }
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Button("Test") {
                
            }
            .buttonStyle(.myButtonStyle)
        }
    }
}
