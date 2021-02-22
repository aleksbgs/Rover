//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//


import SwiftUI
import Kingfisher

struct RoverDetailView: View {
  // MARK: - PROPERTIES
  
  var rover: Photos

  // MARK: - BODY

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 50) {
        
          VStack(alignment: .leading, spacing: 52) {
            Spacer()
            Spacer()
            // NAME
            Text((rover.rover?.name)!)
              .font(.headline)
              .multilineTextAlignment(.leading)
            // IMAGE
            KFImage(URL(string: rover.img_src!))
              .resizable()
              .scaledToFit()
              .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            
            // LANDING DATE
            Text("Landing date \(String(describing: rover.rover!.landing_date))".uppercased())
              .fontWeight(.bold)
              .foregroundColor(Color.red)
            
            // LAUNCH DATE
            Text("Launch date \(String(describing: rover.rover!.launch_date))".uppercased())
              .multilineTextAlignment(.leading)
            
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        } //: VSTACK
        .navigationBarTitle((rover.rover?.name)!, displayMode: .inline)
        .navigationBarHidden(true)
      } //: SCROLL
      .edgesIgnoringSafeArea(.top)
    } //: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

//MARK: - PREVIEW

struct RoverDetailView_Previews: PreviewProvider {
  static var previews: some View {
    RoverDetailView(rover: RoverFetchRequest.init().allRoverData[0])
      .previewDevice("iPhone 11 Pro")
  }
}
