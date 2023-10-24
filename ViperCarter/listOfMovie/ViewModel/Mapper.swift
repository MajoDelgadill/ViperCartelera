//
//  Mapper.swift
//  ViperCarter
//
//  Created by Ricardo Lopez on 23/10/23.
//

import Foundation
struct Mapper{
    func map(entity: PopularMoviewEntity)-> ViewModel{
        ViewModel(title: entity.title,
                  overview: entity.overview,
                  imageURL: URL(string: "https://image.tmdb.org/t/p/w200" + entity.imageURL))
        
    }
}
