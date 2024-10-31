//
//  APIService.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/30/24.
//

import Foundation

class APIService {
    
    // GET FUNC
    func getRequest<T: Decodable>(mode: String = "GET", completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = NetworkManager.shared.makeURL(part: mode) else {
            print("🧨 Invalid URL")
            completion(.failure(NetworkError.noData))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("🧨 Error: \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(decodedData))
                } catch {
                    print("🧨 Decoding error: \(error)")
                    completion(.failure(error))
                }
            }
        }.resume()
    }
    
    // POST FUNC
    func postRequest<T: Codable>(mode: String = "POST", body: T, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = NetworkManager.shared.makeURL(part: mode) else {
            print("🧨 Invalid URL")
            completion(.failure(NetworkError.noData))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // Encoding process
        do {
            request.httpBody = try JSONEncoder().encode(body)
        } catch {
            print("🧨 Encoding error: \(error)")
            completion(.failure(error))
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            
            if let data = data {
                print("Success: \(String(data: data, encoding: .utf8) ?? "")")
            }
        }.resume()
    }
}

enum NetworkError: Error {
    case noData
    case decodingError(Error)
}
