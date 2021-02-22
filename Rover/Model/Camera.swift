
//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import Foundation
struct Camera : Codable {
	let id : Int?
	let name : String?
	let rover_id : Int?
	let full_name : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case name = "name"
		case rover_id = "rover_id"
		case full_name = "full_name"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		rover_id = try values.decodeIfPresent(Int.self, forKey: .rover_id)
		full_name = try values.decodeIfPresent(String.self, forKey: .full_name)
	}

}
