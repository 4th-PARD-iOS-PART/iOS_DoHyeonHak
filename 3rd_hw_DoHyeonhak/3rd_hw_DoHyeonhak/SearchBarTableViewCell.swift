//
//  SearchBarTableViewCell.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/30/24.
//

import UIKit

class SearchBarTableViewCell: UITableViewCell{
    let label = UILabel()
    let firstImage = UIImageView()
    let secondImage = UIImageView()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "SearchBarCell")
        contentView.addSubview(firstImage)
        contentView.addSubview(label)
        contentView.addSubview(secondImage)
        
        backgroundColor = .darkGray
        label.textColor = .gray
        
        setConstraint()
    }
    
    func setConstraint(){
        firstImage.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        secondImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 27),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 160),
            
            firstImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            firstImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            
            secondImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            secondImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 360),
        ])
    }
    func configure(){
        label.text = "Search for a show, movie, genre, e.t.c."
        firstImage.image = UIImage(named: "lense")
        secondImage.image = UIImage(named: "mic")
        
    }
    
    
}
