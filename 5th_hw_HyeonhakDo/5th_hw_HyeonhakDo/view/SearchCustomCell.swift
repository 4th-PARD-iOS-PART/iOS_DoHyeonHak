//
//  SearchCustomCell.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/29/24.
//

import UIKit

// MARK: - 1. SearchCustomCell class 생성
class SearchCustomCell: UITableViewCell {
    let image = UIImageView()
    let label = UILabel()
    let button = UIButton()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        // 테이블 뷰 셀 사이의 간격
        // reference 참고
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 0))
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "SearchCell")
        contentView.backgroundColor = .darkGray
        contentView.addSubview(label)
        contentView.addSubview(image)
        contentView.addSubview(button)
        
        backgroundColor = .clear
        label.textColor = .white
        
        setButton()
        setConstraint()
    }
    
    func setButton(){
        button.setImage(UIImage(named: "play"), for: .normal)
    }
    
    func setConstraint(){
        label.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 27),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 160),
            
            image.topAnchor.constraint(equalTo: contentView.topAnchor),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            
            button.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
            button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 360),
        ])
    }
    
    func configure(with title: String, imageName: String){
        label.text = title
        image.image = UIImage(named: imageName)
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
    }
}
