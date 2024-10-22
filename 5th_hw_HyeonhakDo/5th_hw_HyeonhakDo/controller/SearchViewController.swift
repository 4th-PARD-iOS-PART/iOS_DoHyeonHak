//
//  SearchViewController.swift
//  4th_hw_HyeonhakDoz
//
//  Created by 도현학 on 9/25/24.
//

import UIKit

// MARK: - 1. tableView class 생성
class SearchViewController: UIViewController{
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.backgroundColor = .clear
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: false) // 네비게이션바 숨기기
        
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = .clear
        
        tableView.register(SearchBarTableViewCell.self, forCellReuseIdentifier: "SearchBarCell")
        tableView.register(SearchCustomCell.self, forCellReuseIdentifier: "SearchCell")
        
        setConstraint()
    }
    
    func setConstraint(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    
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
        if indexPath.section == 0 {
            return 50
        }
        return 82
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 50
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
        return nil  // 이거 안하면 출력에 오류가 생김
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section != 0 {
            let item = SearchMockData.Modeling[indexPath.row]
            openModal(for: item)
        }
    }
    
    func openModal(for item: MockData) {
        let modal = ListViewController()
        modal.selectedItem = item
        let navController = UINavigationController(rootViewController: modal)
        modal.modalPresentationStyle = .fullScreen // 모달을 fullscreen으로 설정
        self.present(navController, animated: true, completion: nil)
    }
    
}
