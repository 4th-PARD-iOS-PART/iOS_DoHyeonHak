//
//  SearchMockData.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/29/24.
//

import UIKit

struct SearchMockData{
    var title: String
    var image: String
}

extension SearchMockData{
    static var Modeling = [
            MockData(title: "Citation", image: "movie-1"),
            MockData(title: "Oloture", image: "movie-2"),
            MockData(title: "The Setup", image: "movie-3"),
            MockData(title: "Breaking Bad", image: "movie-4"),
            MockData(title: "Ozark", image: "movie-5"),
            MockData(title: "The Governor", image: "movie-6"),
            MockData(title: "Your Excellency", image: "movie-7"),
    ]
}
