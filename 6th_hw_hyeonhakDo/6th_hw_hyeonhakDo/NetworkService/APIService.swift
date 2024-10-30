//
//  APIService.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/30/24.
//

import Foundation

class APIService {
    // POST Request
    
    let baseURL = "http://ec2-13-209-3-68.ap-northeast-2.compute.amazonaws.com:8080"
    
    func addNewUser() {
        guard let url = URL(string: "\(baseURL)/user") else { return }
        
        let newUser = User(id: nil, name: "김현중", part: "iOS", age: 26)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            request.httpBody = try JSONEncoder().encode(newUser)
        } catch {
            print("Encoding error: \(error)")
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            if let data = data {
                print("Success: \(String(data: data, encoding: .utf8) ?? "")")
            }
        }.resume()
    }

    // GET Request
    func getAllUsers(part: String = "all") {
        guard let url = URL(string: "\(baseURL)/user?part=\(part)") else {
            print("🧨 Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            if let data = data {
                do {
                    let users = try JSONDecoder().decode([User].self, from: data)
                    print("Users: \(users)")
                } catch {
                    print("Decoding error: \(error)")
                }
            }
        }.resume()
    }

}
