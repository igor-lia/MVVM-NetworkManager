//
//  ViewModel.swift
//  MVVM-NetworkManager
//
//  Created by Ігор Ляхович on 07.11.2022.
//

import Foundation

class ViewModel: NSObject {
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies: [String]?
    
    func fetchMovies(completion: @escaping () -> ()) {
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            completion()
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let movies = movies else { return "" }
        
        return movies[indexPath.row]
    }
}
