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
            VStack(spacing: 0) {
                Text("LET'S CREATE MEMORIES \nWITH YOUR LOVED ONES! \n")
                    .buttonText()
                    .multilineTextAlignment(.center)
                    .opacity(show ? 1 : 0)
                Text("BEFORE IT'S TOO LATE")
                    .bodyText()
                    .multilineTextAlignment(.center)
                    .opacity(show ? 0.3 : 0)
            }
//            .animation(.easeInOut(duration: 0.5))
            .animation(Animation.easeInOut(duration: 0.5), value: show)
        }
        .onAppear {
            withAnimation() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
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
