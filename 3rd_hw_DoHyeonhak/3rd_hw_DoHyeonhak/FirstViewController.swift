//
//  FirstViewController.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/25/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    let titleSection = [
        "Popular on Netflix", "Trending Now", "Top 10 in Nigeria Today",
        "My List", "African Movies", "Nollywood Movies & TV"
    ]
    
    let tableView: UITableView = {
        let table = UITableView()
        table.backgroundColor = .clear
        table.translatesAutoresizingMaskIntoConstraints = false

        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(HomeTableViewController.self, forCellReuseIdentifier: "HomeTableViewCell")
        tableView.register(CollectionViewController.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .clear
                           
               
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return titleSection.count + 1 // 6개의 섹션을 표시
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as? HomeTableViewController else {
                return UITableViewCell()
            }
            return cell
        }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CollectionViewController else {
                return UITableViewCell()
            }
            
            switch indexPath.section{
                case 0 :
                    cell.configure(with: MockData.Modeling[indexPath.section - 1])
                case 1 :
                    cell.configure(with: MockData.Modeling[indexPath.section - 1])
                case 2 :
                    cell.configure(with: MockData.Modeling[indexPath.section - 1])
                case 3 :
                    cell.configure(with: MockData.Modeling[indexPath.section - 1])
                case 4 :
                    cell.configure(with: MockData.Modeling[indexPath.section - 1])
                case 5 :
                    cell.configure(with: MockData.Modeling[indexPath.section - 1])
                case 6 :
                    cell.configure(with: MockData.Modeling[indexPath.section - 1])
                default :
                    cell.configure(with: MockData.Modeling[indexPath.section - 1])
            }
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleSection[section]
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 380
        }
        return 130
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 50 // 헤더 높이
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        if section == 0{
            return headerView
        }else{
            let titleLabel = UILabel()
            titleLabel.text = titleSection[section - 1]
            titleLabel.textColor = .white
            titleLabel.font = UIFont.systemFont(ofSize: 25, weight: .bold)
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            
            headerView.addSubview(titleLabel)

            NSLayoutConstraint.activate([
                titleLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
                titleLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor)
            ])
            
            return headerView
        }
    }
}
