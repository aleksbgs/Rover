//
//  RoverApp.swift
//  Rover
//
//  Created by Aleksandar M on 21.2.21..
//

import Foundation
struct Rover : Codable {
	let id : Int?
	let name : String?
	let landing_date : String?
	let launch_date : String?
	let status : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case name = "name"
		case landing_date = "landing_date"
		case launch_date = "launch_date"
		case status = "status"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		landing_date = try values.decodeIfPresent(String.self, forKey: .landing_date)
		launch_date = try values.decodeIfPresent(String.self, forKey: .launch_date)
		status = try values.decodeIfPresent(String.self, forKey: .status)
	}

}
