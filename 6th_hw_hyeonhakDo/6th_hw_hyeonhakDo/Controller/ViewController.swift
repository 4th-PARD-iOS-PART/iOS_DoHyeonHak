//
//  ViewController.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/28/24.
//

import UIKit

class ViewController: UIViewController {
    var members: [MemberData] = []
    var selectedIndex: Int?
    
    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    let titleLabel: UILabel = {
        let title = UILabel()
        title.text = "URL Session"
        title.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        title.textColor = .black
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setTitle("추가", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        view.addSubview(titleLabel)
        view.addSubview(addButton)
        
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        setConstraint()
    }
    
    func setConstraint(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            addButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            // tableView 자체 layout 설정: bottomAnchor 설정 안하면 UI 출력이 안되니 설정할 것
            tableView.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 100),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    @objc func addButtonTapped(){
        let addVC = AddViewController()
        addVC.delegate = self   //  AddViewController에서 데이터를 받아오기 위한 delegate
        let navigationController = UINavigationController(rootViewController: addVC)
        self.present(navigationController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let member = members[indexPath.row]
        cell.textLabel?.text = "[ \(member.part) ] \(member.name)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        selectedIndex = indexPath.row
        let member = members[indexPath.row]
        let detailVC = DetailDataViewController()
        detailVC.member = member
        present(detailVC, animated: true)
    }
}

extension ViewController: AddViewControllerDelegate {
    func MemberDidSubmit(_ member: MemberData) {
        if let existingIndex = members.firstIndex(where: { $0.name == member.name }) {
            members[existingIndex] = member
        } else {
            members.append(member)
        }
        tableView.reloadData()  // 데이터 받아오기
    }
}
