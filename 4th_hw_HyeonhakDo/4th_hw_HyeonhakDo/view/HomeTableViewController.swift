//
//  HomeTableViewController.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/27/24.
//

import UIKit

// MARK: - 1. tableView class 생성
class HomeTableViewController: UITableViewCell {

    let logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logoImage"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let logoView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let TVButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("TV Shows", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.contentMode = .scaleAspectFit
        // titleLabel쓰면 폰트 크기 수정 가능하대요
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        
        return button
    }()
   
    let MovieButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Movies", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.contentMode = .scaleAspectFit
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        return button
    }()
   
    let ListButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("My List", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.contentMode = .scaleAspectFit
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        return button
    }()
    
    let MyListButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "plus")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .white
        configuration.imagePlacement = .top
        
        var str = AttributedString.init("My List")
        str.font = .systemFont(ofSize: 15)
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let PlayButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "Vector")
        configuration.background.backgroundColor = .gray
        configuration.imagePlacement = .leading
        configuration.baseForegroundColor = .black
        
        var str = AttributedString.init("Play")
        str.font = .systemFont(ofSize: 25)
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let InfoButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "i")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .white
        configuration.imagePlacement = .top
        
        var str = AttributedString.init("Info")
        str.font = .systemFont(ofSize: 15)
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: "HomeTableViewCell")
        
        
        backgroundColor = .black
        contentView.backgroundColor = .black
        
        contentView.addSubview(logoImageView)
        contentView.addSubview(logoView)
        contentView.addSubview(TVButton)
        contentView.addSubview(MovieButton)
        contentView.addSubview(ListButton)
        contentView.addSubview(MyListButton)
        contentView.addSubview(PlayButton)
        contentView.addSubview(InfoButton)
        
        NSLayoutConstraint.activate([
            
            logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -100),
            logoImageView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            logoImageView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            logoImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 500),
            
            logoView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 0),
            logoView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            TVButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            TVButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 100),
            MovieButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            MovieButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 210),
            ListButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            ListButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 300),
            
            MyListButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 370),
            MyListButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            PlayButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 380),
            PlayButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 155),
            InfoButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 380),
            InfoButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 280),
        ])
        }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
}

