//
//  AuthService.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/05/15.
//

import Foundation
import Alamofire

class AuthService {
    static let shared = AuthService()
      
    private init() {}
    
    // MARK: - login
    func login(name: String,
               email: String,
               password: String,
               completion: @escaping (NetworkResult<Any>) -> (Void)) {

        let url = APIConstants.loginURL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)

        dataRequest.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else { return }
                guard let value = dataResponse.value else { return }

                let networkResult = NetworkHelper.parseJSON(by: statusCode, data: value, type: LoginResponse.self)
                completion(networkResult)

            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
    }
    
    // MARK: - signup
    func signup(name: String,
                email: String,
                password: String,
                completion: @escaping (NetworkResult<Any>) -> (Void)) {

        let url = APIConstants.signupURL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = [
            "name": name,
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)

        dataRequest.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else { return }
                guard let value = dataResponse.value else { return }

                let networkResult = NetworkHelper.parseJSON(by: statusCode, data: value, type: SignUpResponse.self)
                completion(networkResult)

            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
    }
}
