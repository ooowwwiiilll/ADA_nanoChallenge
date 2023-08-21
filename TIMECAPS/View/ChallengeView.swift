//
//  ChallengeView.swift
//  TIMECAPS
//
//  Created by Obed Willhem on 21/08/23.
//

import SwiftUI

struct ChallengeView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            Text("LET'S CREATE MEMORIES \nWITH YOUR LOVED ONES \nBEFORE THEY'RE GONE! \n🙏❤️")
                .buttonText()
                .multilineTextAlignment(.center)
                .opacity(show ? 1 : 0)
                .animation(.easeInOut(duration: 0.5))
        }
        .onAppear {
            withAnimation() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    show.toggle()
                }
            }
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
