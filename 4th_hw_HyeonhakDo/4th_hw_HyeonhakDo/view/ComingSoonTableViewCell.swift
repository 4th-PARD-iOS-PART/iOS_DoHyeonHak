//
//  ComingSoonTableViewCell.swift
//  4th_hw_HyeonhakDo
//
//  Created by 도현학 on 9/30/24.
//

import UIKit

// MARK: - 1. tableView class 생성
class ComingSoonTableViewCell: UITableViewCell {
    let image = UIImageView()
    let title = UILabel()
    let explanationLabel = UILabel()
    let monthLabel = UILabel()
    let underTagLabel = UILabel()
    let shareButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "share")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .white
        configuration.imagePlacement = .top
        
        var str = AttributedString.init("Share")
        str.font = .systemFont(ofSize: 13)
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let remindButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "notice2")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .white
        configuration.imagePlacement = .top
        
        var str = AttributedString.init("Remind Me")
        str.font = .systemFont(ofSize: 13)
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "CSCell")
        backgroundColor = .clear
        contentView.backgroundColor = .clear

        setSubViews()
        setConstraint()
    }
    
    func setSubViews(){
        contentView.addSubview(image)
        contentView.addSubview(title)
        contentView.addSubview(monthLabel)
        contentView.addSubview(explanationLabel)
        contentView.addSubview(underTagLabel)
        contentView.addSubview(shareButton)
        contentView.addSubview(remindButton)
    }
    
    func setConstraint(){
        image.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        monthLabel.translatesAutoresizingMaskIntoConstraints = false
        explanationLabel.translatesAutoresizingMaskIntoConstraints = false
        underTagLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            image.heightAnchor.constraint(equalToConstant: 200),
            
            remindButton.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10),
            remindButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 140),
            remindButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            shareButton.topAnchor.constraint(equalTo: image.bottomAnchor, constant:8),
            shareButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 330),
            shareButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            
            monthLabel.topAnchor.constraint(equalTo: remindButton.bottomAnchor, constant: 10),
            monthLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            monthLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            title.topAnchor.constraint(equalTo: monthLabel.bottomAnchor, constant: 5),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            explanationLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 5),
            explanationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            explanationLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            underTagLabel.topAnchor.constraint(equalTo: explanationLabel.bottomAnchor, constant: 5),
            underTagLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            underTagLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            underTagLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        ])
    }
    
    // 처음에 변수 선언할 때 다 설정했었는데, configure함수로 mockdata출력에 도움을 주려니 출력 문제가 생겨 일단 이렇게 했다. 아마 기존에 제약조건, cell의 height문제 등이 복합적으로 있어서 그런 것 같다. 이후 다시 볼 것.
    func configure(with title: String, imageName: String){
        image.image = UIImage(named: imageName)
        self.monthLabel.text = "Season 1 Coming December 14"
        
        self.title.text = title
        self.title.textColor = .white
        self.title.font = .systemFont(ofSize: 20, weight: .bold)
        
        self.explanationLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam."
        self.underTagLabel.text = "Steamy • Soapy • Slow Burn •. Suspenseful •. Teen • Mystery"
    
        self.explanationLabel.textColor = .white
        self.explanationLabel.numberOfLines = 0
        self.explanationLabel.font = .systemFont(ofSize: 11)
        self.explanationLabel.lineBreakMode = .byWordWrapping
        
        self.monthLabel.textColor = .white
        self.monthLabel.font = .systemFont(ofSize: 13)
        
        self.underTagLabel.textColor = .white
        self.underTagLabel.font = .systemFont(ofSize: 13, weight: .bold)
    }
}
