//
//  ListTableViewCell.swift
//  5th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/19/24.
//


import UIKit


class ListTableViewCell: UITableViewCell {
    
    let previewImage = UIImageView()
    
    let mirroringButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        
        configuration.image = UIImage(named: "mirror")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .gray
        let button = UIButton(configuration: configuration)
        
        return button
    }()
    
    let XButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "x")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .gray
        
        let button = UIButton(configuration: configuration)
        
        return button
    }()
    
    
    let logoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let seriesImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "SERIES"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let redBarImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bar"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        
        return imageView
    }()
    
    let ADImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "AD"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let visionImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "vision"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let HDImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "HD"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let ratingImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rating"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let yearLabel: UILabel = {
        let label = UILabel()
        label.text = "2022"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
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
        
        return button
    }()
    
    let titleLabel = UILabel()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "S5:E10 Nothing Remains The Same"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.text = "Hearts flip as Heather weds Tarek. Jason and Mary grapple with being ghosted. Go solo or take the next step: The agents face life-changing decisions."
        label.textColor = .white
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12)
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let MyListButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "plus")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .white
        configuration.imagePlacement = .top
        
        var str = AttributedString.init("My List")
        str.font = .systemFont(ofSize: 12)
        str.foregroundColor = .darkGray
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        
        return button
    }()
    
    let rateButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "good")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .white
        configuration.imagePlacement = .top
        
        var str = AttributedString.init("Rate")
        str.font = .systemFont(ofSize: 12)
        str.foregroundColor = .darkGray
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        
        return button
    }()
    
    let shareButton: UIButton = {
        var configuration = UIButton.Configuration.filled()
        configuration.image = UIImage(named: "flight")
        configuration.background.backgroundColor = .clear
        configuration.baseForegroundColor = .white
        configuration.imagePlacement = .top
        
        var str = AttributedString.init("share")
        str.font = .systemFont(ofSize: 12)
        str.foregroundColor = .darkGray
        configuration.attributedTitle = str

        let button = UIButton(configuration: configuration)
        
        return button
    }()
    
    let episodeLabel: UILabel = {
        let label = UILabel()
        label.text = "Episodes"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }()
    
    let collectionLabel: UILabel = {
        let label = UILabel()
        label.text = "Collections"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }()
    
    let moreLabel: UILabel = {
        let label = UILabel()
        label.text = "More Like This"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }()
    
    let trailerLabel: UILabel = {
        let label = UILabel()
        label.text = "Trailers & More"
        label.textColor = .darkGray
        label.font = UIFont.boldSystemFont(ofSize: 13)
        return label
    }()
    
    let seasonLabel: UILabel = {
        let label = UILabel()
        label.text = "Season 5"
        label.textColor = .white
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    let seasonLabel2: UILabel = {
        let label = UILabel()
        label.text = "Season 5"
        label.textColor = .white
        label.font = .systemFont(ofSize: 15)
        return label
    }()
    
    let chevronImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "chevron"))
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    let labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
    
    let labelImageStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        return stackView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: "ListCell2")
        backgroundColor = .black
        contentView.backgroundColor = .black
        setup()
        setConstraint()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup(){
        contentView.addSubview(previewImage)
        contentView.addSubview(logoImage)
        contentView.addSubview(seriesImage)
        contentView.addSubview(mirroringButton)
        contentView.addSubview(XButton)
        
        contentView.addSubview(playButton)
        contentView.addSubview(downloadButton)
        contentView.addSubview(MyListButton)
        contentView.addSubview(rateButton)
        contentView.addSubview(shareButton)
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(contentLabel)
        
        contentView.addSubview(redBarImage)
        
        contentView.addSubview(yearLabel)
        contentView.addSubview(visionImage)
        contentView.addSubview(ratingImage)
        contentView.addSubview(ADImage)
        contentView.addSubview(HDImage)
        contentView.addSubview(seasonLabel2)
        
        // StackView에 레이블들 추가
        labelStackView.addArrangedSubview(episodeLabel)
        labelStackView.addArrangedSubview(collectionLabel)
        labelStackView.addArrangedSubview(moreLabel)
        labelStackView.addArrangedSubview(trailerLabel)
            
        contentView.addSubview(labelStackView) // StackView를 contentView에 추가
        
        contentView.addSubview(seasonLabel)
        contentView.addSubview(chevronImage)
        
        XButton.addTarget(self, action: #selector(XButtonTapped), for: .touchUpInside)
    }
    
    func setConstraint(){
        previewImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        seriesImage.translatesAutoresizingMaskIntoConstraints = false
        mirroringButton.translatesAutoresizingMaskIntoConstraints = false
        XButton.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        playButton.translatesAutoresizingMaskIntoConstraints = false
        downloadButton.translatesAutoresizingMaskIntoConstraints = false
        MyListButton.translatesAutoresizingMaskIntoConstraints = false
        rateButton.translatesAutoresizingMaskIntoConstraints = false
        shareButton.translatesAutoresizingMaskIntoConstraints = false
        
        redBarImage.translatesAutoresizingMaskIntoConstraints = false
        
        labelStackView.translatesAutoresizingMaskIntoConstraints = false
        
        yearLabel.translatesAutoresizingMaskIntoConstraints = false
        seasonLabel2.translatesAutoresizingMaskIntoConstraints = false
        visionImage.translatesAutoresizingMaskIntoConstraints = false
        ratingImage.translatesAutoresizingMaskIntoConstraints = false
        HDImage.translatesAutoresizingMaskIntoConstraints = false
        ADImage.translatesAutoresizingMaskIntoConstraints = false
        
        seasonLabel.translatesAutoresizingMaskIntoConstraints = false
        chevronImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            previewImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -35),
            previewImage.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            previewImage.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            previewImage.heightAnchor.constraint(equalToConstant: 200),
            
            mirroringButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -30),
            mirroringButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            
            XButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor),
            XButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),

            logoImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 170),
            logoImage.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: -5),
            logoImage.widthAnchor.constraint(equalToConstant: 25),
            logoImage.heightAnchor.constraint(equalToConstant: 25),
            
            seriesImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 172),
            seriesImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            seriesImage.widthAnchor.constraint(equalToConstant: 60),
            seriesImage.heightAnchor.constraint(equalToConstant: 20),
            
            playButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 235),
            playButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            playButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),
            
            downloadButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 280),
            downloadButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor),
            downloadButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor),

            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 190),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 325),
            subtitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            subtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),

            contentLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 345),
            contentLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            contentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            MyListButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 410),
            MyListButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            rateButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 415),
            rateButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 120),
            
            shareButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 415),
            shareButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 210),
            
            redBarImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 485),
            redBarImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            redBarImage.widthAnchor.constraint(equalToConstant: 80),
            redBarImage.heightAnchor.constraint(equalToConstant: 4),
            
            // StackView 제약 설정
            labelStackView.topAnchor.constraint(equalTo: redBarImage.bottomAnchor, constant: 10),
            labelStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            labelStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
                        
            seasonLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 550),
            seasonLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10),
            seasonLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            chevronImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 550),
            chevronImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 80),
            
            yearLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 215),
            yearLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            ratingImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 217),
            ratingImage.leadingAnchor.constraint(equalTo: yearLabel.trailingAnchor, constant: 10 ),
            seasonLabel2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 215),
            seasonLabel2.leadingAnchor.constraint(equalTo: ratingImage.trailingAnchor, constant: 10 ),
            visionImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 217),
            visionImage.leadingAnchor.constraint(equalTo: seasonLabel2.trailingAnchor, constant: 10 ),
            HDImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 217),
            HDImage.leadingAnchor.constraint(equalTo: visionImage.trailingAnchor, constant: 10 ),
            ADImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 217),
            ADImage.leadingAnchor.constraint(equalTo: HDImage.trailingAnchor, constant: 10 ),
                    
        ])
        }
    
    func configure(with title: String, imageName: String){
        titleLabel.text = title
        titleLabel.textColor = .white
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        previewImage.image = UIImage(named: imageName)
        previewImage.contentMode = .scaleAspectFill
        previewImage.backgroundColor = .clear
        previewImage.clipsToBounds = true
    }
}

//MARK: -  모달창 닫기
extension ListTableViewCell {
    @objc func XButtonTapped(){
        print("XButton tapped")
        NotificationCenter.default.post(name: NSNotification.Name("CloseModalNotification"), object: nil)
    }
}
