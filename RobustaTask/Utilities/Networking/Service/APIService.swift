//
//  APIService.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

final class APIService: NSObject, APIServiceContract {
    static let shared = APIService()
    
    private override init() {}
    
    func request<T: Decodable>(
        using request: URLRequest,
        responseType: T.Type,
        decoder: JSONDecoder,
        completion: @escaping (Result<T, Error>) -> Void
    ){
//        let url =  URL(string: "https://api.github.com/search/repositories?q=\(key)&per_page=\(count)&page=\(page)")!
        URLSession.shared.dataTask(with: request) { (data, response, error) in

            guard error == nil else {
                return completion(.failure(error!))
            }
            guard let data = data else {
                return completion(.failure(AppError.emptyData))
            }
            guard let decoded = try? decoder.decode(responseType, from: data) else {
                print(String(data: data, encoding: .utf8) ?? .init())
                return completion(.failure(AppError.decodingFailed))
            }
            completion(.success(decoded))
        }
        .resume()
    }
}
