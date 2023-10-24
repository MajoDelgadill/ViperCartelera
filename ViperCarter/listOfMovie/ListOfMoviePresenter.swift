//
//  ListOfMoviePresenter.swift
//  ViperCarter
//
//  Created by Ricardo Lopez on 16/10/23.
//

import Foundation

protocol ListOfMovieUI: AnyObject{
    func update(movies: [ViewModel])
}
class ListOfMoviePresenter {
    var ui: ListOfMovieUI?
    
    private let listOfMovieInteractor: ListOfMovieInteractor
    var viewModels: [ViewModel] = []
    private let mapper: Mapper
    
    init(listOfMovieInteractor: ListOfMovieInteractor, 
         mapper:Mapper = Mapper()) {
        self.listOfMovieInteractor = listOfMovieInteractor
        self.mapper = mapper
    }
    func onViewAppear() {
        Task{
          let models = await listOfMovieInteractor.getListOfMovie().results
            viewModels = models.map(mapper.map(entity:))
            }
            ui?.update(movies: viewModels)
            
        }
    
}
