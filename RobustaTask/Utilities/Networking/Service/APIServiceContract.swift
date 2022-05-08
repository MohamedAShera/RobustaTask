//
//  APIServiceContract.swift
//  RobustaTask
//
//  Created by mohamed shera on 08/05/2022.
//

import Foundation

protocol APIServiceContract {
    func request<T: Decodable>(
        using request: URLRequest,
        responseType: T.Type,
        decoder: JSONDecoder,
        completion: @escaping (Result<T, Error>) -> Void
    )
}

extension APIServiceContract {
    func request<T: Decodable>(
        using request: URLRequest,
        responseType: T.Type,
        decoder: JSONDecoder,
        completion: @escaping (Result<T, Error>) -> Void
    ){
        self.request(
            using: request,
            responseType: responseType,
            decoder: JSONDecoder(),
            completion: completion
        )
    }
}

