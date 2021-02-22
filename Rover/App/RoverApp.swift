//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import SwiftUI
import Darwin

@main
struct RoverApp: App {
    @State var roverFetch = RoverFetchRequest()

    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
       WindowGroup {

        if isOnboarding {
          OnboardingView()
            .environmentObject(roverFetch)
        }
        
        else {
          ContentView()
            .environmentObject(roverFetch)
        }
      }
     
    
    }
    
}
