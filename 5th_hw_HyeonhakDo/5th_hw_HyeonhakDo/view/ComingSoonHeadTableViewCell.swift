//
//  ComingSoonHeadTableViewCell.swift
//  4th_hw_HyeonhakDo
//
//  Created by 도현학 on 9/30/24.
//

import UIKit

// MARK: - 1. tableView class 생성
class ComingSoonHeadTableViewCell: UITableViewCell {
    let NotificationButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "notice1")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .white
        configuration.imagePlacement = .leading
        
        var str = AttributedString.init(" Notifications")
        str.font = .systemFont(ofSize: 20, weight: .bold)
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "CSHeadCell")
        backgroundColor = .clear
        contentView.backgroundColor = .clear

        setSubViews()
        setConstraint()
    }
    
    func setSubViews(){
        contentView.addSubview(NotificationButton)
     
    }
    
    func setConstraint(){
        NotificationButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            NotificationButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            NotificationButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
        ])
    }
}
