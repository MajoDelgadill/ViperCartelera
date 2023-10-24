//
//  ListOfMovieInteractor.swift
//  ViperCarter
//
//  Created by Ricardo Lopez on 16/10/23.
//"https://api.themoviedb.org/3/movie/popular?api_key=3fbfcb2b1667ce9acfaf37a6a03c2f4b"

import Foundation
 
class ListOfMovieInteractor{
    func getListOfMovie() async -> PopularMovieResponseEntity{
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=3fbfcb2b1667ce9acfaf37a6a03c2f4b")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(PopularMovieResponseEntity.self, from: data)
    }
    
}
