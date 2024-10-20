//
//  ListTableCell.swift
//  5th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/6/24.
//

import UIKit

class ListTableCell: UITableViewCell {
    
    let image = UIImageView()
    let playimage = UIImageView()
    let label = UILabel()
    let timeLabel = UILabel()
    let explanationLabel = UILabel()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "ListCell")
        contentView.backgroundColor = .clear
        contentView.addSubview(label)
        contentView.addSubview(image)
        contentView.addSubview(playimage)
        contentView.addSubview(explanationLabel)
        contentView.addSubview(timeLabel)
        
        backgroundColor = .clear
        
        setConstraint()
    }
    
    func setConstraint(){
        image.translatesAutoresizingMaskIntoConstraints = false
        playimage.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        explanationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 165),
            
            image.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            playimage.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 30),
            playimage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            
            
            explanationLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 90),
            explanationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            explanationLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 10),
            
            timeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50),
            timeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 165),
            
        ])
    }
    
    func configure(with title: String, imageName: String){
        label.text = "0. Episode"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .white
        
        image.image = UIImage(named: imageName)
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        
        playimage.image = UIImage(named: "play2")
        playimage.contentMode = .scaleAspectFill
        playimage.clipsToBounds = true
        
        explanationLabel.text = "Flying high: Chrishell reveals her latest love - Jason. In LA, the agents get real about the relationship while Christine readies her return."
        explanationLabel.textColor = .white
        explanationLabel.numberOfLines = 0
        explanationLabel.font = .systemFont(ofSize: 13)
        explanationLabel.lineBreakMode = .byWordWrapping
        
        timeLabel.text = "37min"
        timeLabel.textColor = .lightGray
        timeLabel.font = .systemFont(ofSize: 13)
        
    }
    
}
