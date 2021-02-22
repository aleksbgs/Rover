//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import SwiftUI
import Kingfisher

struct RoverRowView: View {
  // MARK: - PROPERTIES
  var rover: Photos

  // MARK: - BODY

  var body: some View {
    HStack {
        KFImage(URL(string: rover.img_src!))
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80, alignment: .center)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5) {
        Text((rover.camera?.name)!)
          .font(.title2)
          .fontWeight(.bold)
        Text((rover.id?.description)!)
          .font(.caption)
          .foregroundColor(Color.secondary)
      }
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct RoverRowView_Previews: PreviewProvider {
  static var previews: some View {
    RoverRowView(rover: RoverFetchRequest.init().allRoverData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
