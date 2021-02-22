//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import Foundation
struct Photos : Identifiable, Codable {
	let id : Int?
	let sol : Int?
	let camera : Camera?
	let img_src : String?
	let earth_date : String?
	let rover : Rover?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case sol = "sol"
		case camera = "camera"
		case img_src = "img_src"
		case earth_date = "earth_date"
		case rover = "rover"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		sol = try values.decodeIfPresent(Int.self, forKey: .sol)
		camera = try values.decodeIfPresent(Camera.self, forKey: .camera)
		img_src = try values.decodeIfPresent(String.self, forKey: .img_src)
		earth_date = try values.decodeIfPresent(String.self, forKey: .earth_date)
		rover = try values.decodeIfPresent(Rover.self, forKey: .rover)
	}

}
