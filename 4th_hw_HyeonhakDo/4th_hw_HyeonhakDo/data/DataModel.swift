//
//  DataModel.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/24/24.
//

import UIKit

struct Model{
    var title: String
    var image: String
}

extension Model{
    static var ModelData = [
        Model(title: "movie1", image: "movie1"),
        Model(title: "movie2", image: "movie2"),
        Model(title: "movie3", image: "movie3"),
        Model(title: "movie4", image: "movie4"),
        Model(title: "movie5", image: "movie5"),
        Model(title: "movie6", image: "movie6"),
    ]
}
