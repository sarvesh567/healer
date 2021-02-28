//
//  MovieModel.swift
//  Healer
//
//  Created by Sarvesh Patel on 16/02/21.
//

import UIKit

class MovieModel: NSObject {

    var trackName: String?
    init(trackName: String) {
        self.trackName = trackName
        
    }
}

class ResultsModel: NSObject {
    
    var results = [MovieModel]()
    init(results: [MovieModel]) {
        self.results = results
    }
}
