//
//  AddViewControllerDelegate.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/29/24.
//

import Foundation

protocol AddViewControllerDelegate: AnyObject {
    func MemberDidSubmit(_ memo: MemberData)
}
