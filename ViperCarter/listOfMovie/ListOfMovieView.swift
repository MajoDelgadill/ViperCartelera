//
//  ListOfMoviewView.swift
//  ViperCarter
//
//  Created by Ricardo Lopez on 16/10/23.
//

import Foundation
import UIKit

class ListOfMovieView: UIViewController{
    private var movieTable: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.estimatedRowHeight = 120
        tableView.rowHeight = UITableView.automaticDimension
        tableView.register(MovieCellView.self, forCellReuseIdentifier: "MovieCellView")
        return tableView
    }()
    private let  presenter: ListOfMoviePresenter
    
    init(presenter: ListOfMoviePresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        setupTableView()
        presenter.onViewAppear()
    }
    
    private func setupTableView(){
        view.addSubview(movieTable)
        
        NSLayoutConstraint.activate([
            movieTable.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            movieTable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            movieTable.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            movieTable.topAnchor.constraint(equalTo: view.topAnchor),
        ])
        movieTable.dataSource = self
    }
    
}
extension ListOfMovieView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCellView", for: indexPath) as! MovieCellView
        cell.backgroundColor = .white
        let model = presenter.viewModels[indexPath.row]
        cell.configure(model: model)
        return cell
    }
    
    
}
extension ListOfMovieView: ListOfMovieUI{
    func update(movies: [ViewModel]) {
        print("Datos Recibidos \(movies)")
        DispatchQueue.main.async {
            self.movieTable.reloadData()
        }
    }
}
