//
//  PopularMovieResponseEntity.swift
//  ViperCarter
//
//  Created by Ricardo Lopez on 16/10/23.
//

import Foundation

struct PopularMovieResponseEntity: Decodable{
    let results: [PopularMoviewEntity]
}
