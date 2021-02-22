//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  @State private var isShowingSettings: Bool = false
  @EnvironmentObject var roverFetch: RoverFetchRequest
  
  // MARK: - BODY

  var body: some View {
    NavigationView {
      List {
        ForEach(roverFetch.allRoverData) { item in
          NavigationLink(destination: RoverDetailView(rover: item)) {
            RoverRowView(rover: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Rover")
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          } //: BUTTON
      )
    } //: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
  }
}
