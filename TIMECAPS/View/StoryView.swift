//
//  StoryView.swift
//  TIMECAPS
//
//  Created by Obed Willhem on 21/08/23.
//

import SwiftUI

struct StoryView: View {
    @State var show = false
    @State var lastShow = false
    @State var steps = 0
    @State var isLastStep = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                Color.purple.opacity(0.4).edgesIgnoringSafeArea(.all)
                
                if isLastStep {
                    ChallengeView()
                        .opacity(lastShow ? 1 : 0)
                        .animation(.easeInOut(duration: 0.5))
                        .onAppear {
                            withAnimation() {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    lastShow.toggle()
                                }
                            }
                        }
                } else {
                    VStack (spacing: 32) {
                        ZStack {
    //                        ForEach(Stories) { story in
    //                            CardView(story: story)
    //                        }
                            CardView(story: Stories[steps])
                            
                        }
                        Button("NEXT") {
                            if steps != 10 {
                                steps = steps + 1
                            } else {
                                isLastStep.toggle()
                            }
                        }
                        .buttonStyle(.myButtonStyle)
                    }
                    .padding(16)
                    .opacity(show ? 1 : 0)
                    .animation(.easeInOut(duration: 0.5))
                }
            }
            .onAppear {
                withAnimation() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        show.toggle()
                    }
                }
            }
        }
        .navigationBarBackButtonHidden()

    }
}


struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
