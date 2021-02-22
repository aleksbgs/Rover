//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import Foundation
struct BaseModel : Codable,Identifiable {
    var id: String? = UUID().uuidString
	let photos : [Photos]?
	enum CodingKeys: String, CodingKey {
		case photos = "photos"
        case id
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		photos = try values.decodeIfPresent([Photos].self, forKey: .photos)
	}

}
