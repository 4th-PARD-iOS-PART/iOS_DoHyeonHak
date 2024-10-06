//
//  ListTableCell.swift
//  5th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/6/24.
//

import UIKit

class ListTableCell: UITableViewCell {
    
    let image = UIImageView()
    let label = UILabel()
    let timeLabel = UILabel()
    let explanationLabel = UILabel()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "ListCell")
        contentView.backgroundColor = .darkGray
        contentView.addSubview(label)
        contentView.addSubview(image)
        
        backgroundColor = .clear
        label.textColor = .white
        setConstraint()
    }
    
    func setConstraint(){
        label.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 27),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 160),
            
            image.topAnchor.constraint(equalTo: contentView.topAnchor),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
        ])
    }
    
    func configure(with title: String, imageName: String){
        label.text = "0. Episode"
        timeLabel.text = "37min"
        explanationLabel.text = "Flying high: Chrishell reveals her latest love - Jason. In LA, the agents get real about the relationship while Christine readies her return."
        image.image = UIImage(named: imageName)
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
    }
    
}
