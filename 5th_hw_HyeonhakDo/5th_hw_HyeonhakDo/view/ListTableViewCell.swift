//
//  ListTableViewCell.swift
//  5th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/19/24.
//


import UIKit


class ListTableViewCell: UITableViewCell {
    
    let previewImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "previewimage"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let seriesImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "SERIES"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let playButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        
        configuration.image = UIImage(named: "Vector")
        configuration.background.backgroundColor = .white
        configuration.imagePlacement = .leading
        configuration.baseForegroundColor = .black
        
        
        var str = AttributedString.init("Play")
        str.font = .systemFont(ofSize: 20)
        configuration.attributedTitle = str
        
        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let downloadButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        
        configuration.image = UIImage(named: "download3")
        configuration.background.backgroundColor = UIColor(red: 0.12, green: 0.12, blue: 0.12, alpha: 1.0)
        configuration.imagePlacement = .leading
        configuration.baseForegroundColor = .gray
        
        
        var str = AttributedString.init("Download")
        str.font = .systemFont(ofSize: 20)
        str.foregroundColor = .gray
        configuration.attributedTitle = str
        
        let button = UIButton(configuration: configuration)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: "ListCell2")
        
        
        backgroundColor = .black
        contentView.backgroundColor = .black
        
        contentView.addSubview(previewImageView)
        contentView.addSubview(logoImageView)
        contentView.addSubview(seriesImageView)
        
        contentView.addSubview(playButton)
        contentView.addSubview(downloadButton)
        
        
        NSLayoutConstraint.activate([
            previewImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -170),
            previewImageView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            previewImageView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            previewImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            previewImageView.heightAnchor.constraint(equalToConstant: 500),
            
            logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 200),
            logoImageView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 25),
            logoImageView.heightAnchor.constraint(equalToConstant: 25),
            
            seriesImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 202),
            seriesImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            seriesImageView.widthAnchor.constraint(equalToConstant: 60),
            seriesImageView.heightAnchor.constraint(equalToConstant: 20),
            
            playButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 230),
            playButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            playButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            
            downloadButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 280),
            downloadButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            downloadButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
                        
            
        ])
        }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
