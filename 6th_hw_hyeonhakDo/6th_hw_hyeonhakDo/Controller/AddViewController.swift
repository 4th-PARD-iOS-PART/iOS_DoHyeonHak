//
//  AddViewController.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/28/24.
//

import UIKit

class AddViewController: UIViewController {
    var members: MemberData?
    weak var delegate: AddViewControllerDelegate?
    
    var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("추가", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    var nameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "이름"
        return textField
    }()
    var ageTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "나이"
        return textField
    }()
    var partTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "파트"
        return textField
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        submitButton.addTarget(self, action: #selector(submitMemberAndDismiss), for: .touchUpInside)
        
        view.addSubview(submitButton)
        
        view.addSubview(nameTextField)
        view.addSubview(ageTextField)
        view.addSubview(partTextField)
        
        setConstraint()
    }
    
    func setConstraint() {
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        ageTextField.translatesAutoresizingMaskIntoConstraints = false
        partTextField.translatesAutoresizingMaskIntoConstraints = false
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            ageTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            ageTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ageTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            partTextField.topAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: 20),
            partTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            partTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            submitButton.topAnchor.constraint(equalTo: partTextField.bottomAnchor, constant: 40),
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.widthAnchor.constraint(equalToConstant: 100),
            submitButton.heightAnchor.constraint(equalToConstant: 50)
        ])
                
    }
    
    // protocol & delegate pattern 사용
    @objc func submitMemberAndDismiss() {
        let member = buildMemberForm()
        // 이를 통해 MemberDidSubmit에 member를 parameter로 보내고, 정보 저장이 이루어진다.
        delegate?.MemberDidSubmit(member)
        dismiss(animated: true) // close modal
    }
//    
//    @objc func dismissViewController() {
//        self.dismiss(animated: true)
//    }
//    
//    deinit {
//            NotificationCenter.default.removeObserver(self)
//    }
    
    // 데이터 추가를 위한 기본 form building
    func buildMemberForm() -> MemberData {
        MemberData(
            name: nameTextField.text ?? "",
            age: ageTextField.text ?? "",
            part: partTextField.text ?? ""
        )
    }
}
