//
//  ChallengeView.swift
//  TIMECAPS
//
//  Created by Obed Willhem on 21/08/23.
//

import SwiftUI

struct ChallengeView: View {
    @State var is 
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            Text("LET'S CREATE MEMORIES \nWITH YOUR LOVED ONES \nBEFORE THEY'RE GONE! \n🙏❤️")
                .buttonText()
                .multilineTextAlignment(.center)
                .animation(.easeInOut(duration: 0.5))
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
