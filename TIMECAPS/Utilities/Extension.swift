//
//  Extension.swift
//  TIMECAPS
//
//  Created by Obed Willhem on 21/08/23.
//

import SwiftUI

extension Text {
    func buttonText() -> some View {
        self.font(.system(size: 24))
            .fontWeight(.bold)
            .fontDesign(.rounded)
    }
    func bodyText() -> some View {
        self.font(.system(size: 14))
            .fontWeight(.semibold)
            .fontDesign(.rounded)
    }
}

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 24))
            .fontWeight(.bold)
            .fontDesign(.rounded)
            .foregroundColor(.white)
            .padding(.vertical, 16)
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .cornerRadius(16)
            .offset(y: configuration.isPressed ? 8 : 0)
            .shadow(color: Color.orange.opacity(0.8), radius: 0, y: configuration.isPressed ? 0 : 8)
            .shadow(radius: 0, y: configuration.isPressed ? 0 : 0)
    }
}

extension ButtonStyle where Self == MyButtonStyle {
    static var myButtonStyle: MyButtonStyle {
      MyButtonStyle()
    }
}
