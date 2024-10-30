//
//  NetworkManager.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/30/24.
//

import Foundation


class NetworkManager {
    static let shared = NetworkManager()
    
    func requestURL(url: URL) {
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                print("🧨 Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            do {
                let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print("✅ success: \(response)")
                DispatchQueue.main.async {
                    NotificationCenter.default.post(name: .addNotification, object: nil)
                    print("✅ notification 완료 in makeUpdateRequest")
                }
            } catch {
                print("🧨 ", error)
            }
        }
        task.resume()
    }
}

extension Notification.Name {
    static let addNotification = Notification.Name("addNotification")
}

