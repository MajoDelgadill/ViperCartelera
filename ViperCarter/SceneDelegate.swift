//
//  SceneDelegate.swift
//  ViperCarter
//
//  Created by Ricardo Lopez on 16/10/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    var listOfMovieRouter = ListOfMovieRouter()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        listOfMovieRouter.showListOfMovie(window: window)
    }

   
}

