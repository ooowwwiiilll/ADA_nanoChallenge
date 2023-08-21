//
//  ContentView.swift
//  TIMECAPS
//
//  Created by Obed Willhem on 11/08/23.
//

import SwiftUI

struct ContentView: View {
//    let stories = Story()
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                Color.black.opacity(0.2).edgesIgnoringSafeArea(.all)
                VStack (spacing: 32) {
                    CardView(story: Stories[0])
                    ButtonNext(title: "NEXT")
                }
                .padding(16)
            }
        }
        .navigationBarBackButtonHidden()
//        .onAppear {print(stories.list, "Stories")}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
