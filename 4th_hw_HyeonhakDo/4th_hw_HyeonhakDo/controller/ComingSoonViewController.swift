//
//  ComingSoonViewController.swift
//  3rd_hw_DoHyeonhak
//
//  Created by 도현학 on 9/25/24.
//

import UIKit

// MARK: - 1. tableView class 생성
class ComingSoonViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        
        navigationController?.setNavigationBarHidden(true, animated: false) // 네비게이션바 숨기기
        
        view.addSubview(tableView)
        
        tableView.register(ComingSoonTableViewCell.self, forCellReuseIdentifier: "CSCell")
        tableView.register(ComingSoonHeadTableViewCell.self, forCellReuseIdentifier: "CSHeadCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        
        setConstraint()
        
    }
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.backgroundColor = .clear
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    func setConstraint(){
        NSLayoutConstraint.activate([
               tableView.topAnchor.constraint(equalTo: view.topAnchor),
               tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
               tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
               tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
// MARK: - 2. extension 생성
extension ComingSoonViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return ComingSoonMockData.Modeling.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CSHeadCell", for: indexPath) as? ComingSoonHeadTableViewCell else {
                return UITableViewCell()
            }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CSCell", for: indexPath) as? ComingSoonTableViewCell else {
                return UITableViewCell()
            }
            let content = ComingSoonMockData.Modeling[indexPath.row]
            cell.configure(with: content.title, imageName: content.image)
            return cell
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ComingSoonMockData.Modeling.first?.title
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 0
        }
        return 400
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 30
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .clear
        return headerView
    }

}
