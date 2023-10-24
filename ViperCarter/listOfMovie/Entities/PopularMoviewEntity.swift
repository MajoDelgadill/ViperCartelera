//
//  PopularMoviewEntity.swift
//  ViperCarter
//
//  Created by Ricardo Lopez on 16/10/23.
//

import Foundation

struct PopularMoviewEntity: Decodable{
    var id: Int
    var title: String
    var overview: String
    var imageURL: String
    var votes: Double 
    
    enum CodingKeys: String, CodingKey{
        case id, title, overview
        case imageURL = "poster_path"
        case votes = "vote_average"
    }
    
}
