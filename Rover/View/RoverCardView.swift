//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import SwiftUI
import Kingfisher
struct RoverCardView: View {
  // MARK: - PROPERTIES
  
   
  var rover: Photos
 
  @State private var isAnimating: Bool = false
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      VStack(spacing: 20) {
        // ROVER: IMAGE
        KFImage(URL(string: rover.img_src!))
          .resizable()
          .scaledToFit()
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1.0 : 0.6)
        
        // ROVER: TITLE
        Text((rover.camera?.name)!)
          .foregroundColor(Color.black)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
        
        // ROVER: HEADLINE
        Text((rover.rover?.name)!)
          .foregroundColor(Color.black)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
        
        // BUTTON: START
        StartButtonView()
      } //: VSTACK
    } //: ZSTACK
    .onAppear {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    }
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    .cornerRadius(20)
    .padding(.horizontal, 20)
    .background(Color.blue)
  }
}

// MARK: - PREVIEW

struct RoverCardView_Previews: PreviewProvider {

  static var previews: some View {
    RoverCardView(rover:RoverFetchRequest.init().allRoverData[0])
    .previewDevice("iPhone 11 Pro")
  }
}
