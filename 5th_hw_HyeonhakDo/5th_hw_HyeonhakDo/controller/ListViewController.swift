//
//  ListViewController.swift
//  5th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/6/24.
//

import UIKit

class ListViewController: UIViewController {
    
    // 값이 없을수도 있으니 안전성을 위해 optional로
    var selectedItem: MockData?
    var dataTitle: String = ""
    var dataImage: String = ""
    
    let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.backgroundColor = .clear
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: false) // 네비게이션바 숨기기
        
        view.backgroundColor = .black
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(ListTableCell.self, forCellReuseIdentifier: "ListCell")
        tableView.register(ListTableViewCell.self, forCellReuseIdentifier: "ListCell2")
        
        
        if let item = selectedItem {
                    print("Title: \(item.title), Image: \(item.image)")
                    dataTitle = item.title
                    dataImage = item.image
        }
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


extension ListViewController: UITableViewDelegate, UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell2", for: indexPath) as? ListTableCell else {
                    return UITableViewCell()
            }
            return cell
        }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as? ListTableCell else {
                    return UITableViewCell()
            }
            cell.configure(with: dataTitle, imageName: dataImage)
            return cell
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 300
        }
        return 150
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }

}
