//
//  NetworkManager.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/30/24.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    private let baseURL = "http://ec2-13-209-3-68.ap-northeast-2.compute.amazonaws.com:8080"
    
    func makeURL(part: String) -> URL? {
        switch part {
            case "all": // GET mode
                return URL(string: "\(baseURL)/user?part=\(part)")
            case "POST":    // POST mode
                return URL(string: "\(baseURL)/user")
            default:
                print("🧨 Unvalid")
                return nil
        }
    }
}
