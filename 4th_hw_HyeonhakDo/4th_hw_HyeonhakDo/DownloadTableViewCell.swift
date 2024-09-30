//
//  DownloadTableViewCell.swift
//  4th_hw_HyeonhakDo
//
//  Created by 도현학 on 9/30/24.
//

import UIKit

class DownloadTableViewCell: UITableViewCell {
    
    let DownloadImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "download2"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.text = "Movies and TV shows that you download appear here."
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 20)
        
        label.textAlignment = .center
        label.numberOfLines = 2
        label.lineBreakMode = .byWordWrapping
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let FinderButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Find Something to Download", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        
        return button
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "DownloadCell")
        backgroundColor = .clear
        
        setSubViews()
        setConstraint()
    }
    
    func setSubViews(){
        contentView.addSubview(DownloadImageView)
        contentView.addSubview(contentLabel)
        contentView.addSubview(FinderButton)
    }
    
    func setConstraint(){
        NSLayoutConstraint.activate([
            
            DownloadImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100),
            DownloadImageView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            DownloadImageView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            
            contentLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 380),
            contentLabel.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            contentLabel.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            contentLabel.widthAnchor.constraint(equalToConstant: 300),
            
            FinderButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 530),
            FinderButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            FinderButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -50), // 오른쪽 여백 추가
            FinderButton.widthAnchor.constraint(equalToConstant: 300),
            FinderButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
