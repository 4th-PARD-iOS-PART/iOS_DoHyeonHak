//
//  AddViewController.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/28/24.
//

import UIKit

class AddViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    @objc func dismissViewController() {
        self.dismiss(animated: true)
    }
    
    deinit {
            NotificationCenter.default.removeObserver(self)
    }
}
