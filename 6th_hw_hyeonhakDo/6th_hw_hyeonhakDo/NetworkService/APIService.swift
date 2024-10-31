//
//  APIService.swift
//  6th_hw_HyeonhakDo
//
//  Created by 도현학 on 10/30/24.
//

import Foundation

class APIService {
    // GET FUNC
    func getRequest<T: Decodable>(mode: String, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = NetworkManager.shared.makeURL(part: "all") else {
            print("🧨 Invalid URL")
            completion(.failure(NetworkError.noData))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
//        print("Request URL: \(url)")
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("🧨 Error: \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            do {
                let decodeData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodeData))
            } catch {
                completion(.failure(NetworkError.decodingError(error)))
            }
        }.resume()
    }
    
    // POST FUNC
    func postRequest<T: Codable>(mode: String, body: T, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = NetworkManager.shared.makeURL(part: "POST") else {
            print("🧨 Invalid URL")
            completion(.failure(NetworkError.noData))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
//        print("Request URL: \(url)")
        
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
                if let dataString = String(data: data, encoding: .utf8) {
                    print("Success with data: \(dataString)")
                    completion(.success(body))
                } else {
                    print("🧨 Unable to decode data using UTF-8 encoding")
                    completion(.failure(NetworkError.noData))
                }
            }
        }.resume()
    }
}

enum NetworkError: Error {  // enum 사용하여 error check message 용이하게 한다.
    case noData
    case decodingError(Error)
}
