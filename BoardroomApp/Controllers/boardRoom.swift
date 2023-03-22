//
//  boardRoom.swift
//  BoardroomApp
//
//  Created by rahaf on 30/08/1444 AH.
//

import Foundation


// MARK: - BoardRoomElement
struct BoardRoomElement: Codable {
    let name: String
    let facilities: [String]
    let floorNo: Int
    let id, description: String
    let imageURL: String
    let noOfSeats: Int

    enum CodingKeys: String, CodingKey {
        case name, facilities
        case floorNo = "floor_no"
        case id, description
        case imageURL = "image_url"
        case noOfSeats = "no_of_seats"
    }
}

