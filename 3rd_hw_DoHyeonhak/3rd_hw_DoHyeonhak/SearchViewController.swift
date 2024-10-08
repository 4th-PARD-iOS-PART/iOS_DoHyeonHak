//
//  SearchViewController.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/25/24.
//

import UIKit

class SearchViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = .clear
        
        tableView.register(SearchBarTableViewCell.self, forCellReuseIdentifier: "SearchBarCell")
        tableView.register(SearchCustomCell.self, forCellReuseIdentifier: "SearchCell")
    
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.backgroundColor = .clear
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
}

// MARK: - 2. tableView extension 생성
extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return SearchMockData.Modeling.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchBarCell", for: indexPath) as? SearchBarTableViewCell else {
                return UITableViewCell()
            }
            cell.configure()
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath) as? SearchCustomCell else {
                return UITableViewCell()
            }
            
            let content = SearchMockData.Modeling[indexPath.row]
            cell.configure(with: content.title, imageName: content.image)
            return cell
        }
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 82
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
            let headerView = UIView()
            
            let headerTitle = UILabel()
            headerTitle.translatesAutoresizingMaskIntoConstraints = false
            headerTitle.text = "Top Searches"
            headerTitle.font = UIFont.systemFont(ofSize: 30, weight: .bold)
            headerTitle.textColor = .white
            headerView.addSubview(headerTitle)
            
            NSLayoutConstraint.activate([
                headerTitle.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 0),
                headerTitle.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 8),
                headerTitle.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -8),
                headerTitle.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 0)
            ])
            return headerView
        }
        return nil
    }
}

