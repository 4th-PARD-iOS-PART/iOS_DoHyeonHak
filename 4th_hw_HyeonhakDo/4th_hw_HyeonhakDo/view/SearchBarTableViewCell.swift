//
//  SearchBarTableViewCell.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/30/24.
//

import UIKit

// MARK: - 1. tableView class 생성
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
        
        backgroundColor = .clear
        contentView.backgroundColor = .darkGray
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
        label.textColor = .lightGray
        
        setConstraint()
    }
    
    func setConstraint(){
        
        firstImage.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        secondImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            firstImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            firstImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            
            secondImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            secondImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 340),
        ])
    }
    
    func configure(){
        label.text = "Search for a show, movie, genre, e.t.c."
        firstImage.image = UIImage(named: "lense")
        secondImage.image = UIImage(named: "mic")
    }
    
    // reference : https://velog.io/@f-exuan21/TableView-에서-cell-의-너비-수정하기
    override var frame: CGRect {
        get{
            return super.frame
        }
        set {
            var frame = newValue
            frame.origin.x += 10
            frame.size.width -= 2 * 10
            super.frame = frame
        }
    }
    
        
}
