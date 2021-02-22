//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//


import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var roverFetch: RoverFetchRequest
   
    // MARK: - BODY
    
    var body: some View {
        if roverFetch.allRoverData.count > 0 {
            TabView {
              ForEach(roverFetch.allRoverData) { item in
                RoverCardView(rover: item)
              } //: LOOP
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
        }
        else {
            Text("Loading")
        }
   
    }
  }

 //  MARK: - PREVIEW

  struct OnboardingView_Previews: PreviewProvider {

    static var previews: some View {
        OnboardingView()
        .previewDevice("iPhone 12 Pro")
    }
  }
