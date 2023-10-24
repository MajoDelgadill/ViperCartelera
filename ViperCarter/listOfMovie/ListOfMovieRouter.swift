//
//  ListOfMovieRouter.swift
//  ViperCarter
//
//  Created by Ricardo Lopez on 16/10/23.
//

import Foundation
import UIKit

class ListOfMovieRouter{
    func showListOfMovie(window: UIWindow?) {
        let interactor = ListOfMovieInteractor()
        let presenter = ListOfMoviePresenter(listOfMovieInteractor: interactor)
      
        
        let view = ListOfMovieView(presenter: presenter)
        presenter.ui = view
      //  view.presenter = presenter
        
        window?.rootViewController = view
        window?.makeKeyAndVisible()
    }
}
