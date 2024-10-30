//
//  DetailDataViewController.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/30/24.
//

import UIKit

class DetailDataViewController: UIViewController {
    
    var member: MemberData?
    
    let nameLabel = UILabel()
    let ageLabel = UILabel()
    let partLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        if let item = member {
            
            nameLabel.text = "\(item.name)"
            nameLabel.font = .systemFont(ofSize: 40)
            ageLabel.text = "Age: \(item.age)"
            partLabel.text = "Part: \(item.part)"
        }
        
        view.addSubview(nameLabel)
        view.addSubview(ageLabel)
        view.addSubview(partLabel)
        
        setConstraint()
    }
    
    func setConstraint() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        partLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 100),
            ageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

            partLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 20),
            partLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),

        ])
    }

    
}
