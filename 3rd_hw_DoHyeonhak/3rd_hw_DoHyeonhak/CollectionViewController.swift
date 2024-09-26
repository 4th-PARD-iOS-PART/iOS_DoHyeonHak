//
//  CollectionViewController.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/26/24.
//
import UIKit


// CollectionView
class CollectionViewController: UITableViewCell {
    
    var dataStorage: [MockData] = []
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.itemSize = CGSize(width: 100, height: 160)
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.register(CustomCell.self, forCellWithReuseIdentifier: "CustomCell")
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .clear
        return cv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(collectionView)
        backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .black
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with data: [MockData]) {
        self.dataStorage = data
        collectionView.reloadData()
    }
}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataStorage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as? CustomCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(with: UIImage(named: dataStorage[indexPath.item].image) ?? UIImage(), title: dataStorage[indexPath.item].title)
        
        return cell
    }
}
