//
//  NetworkManager.swift
//  MVVM-NetworkManager
//
//  Created by Ігор Ляхович on 07.11.2022.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
}
