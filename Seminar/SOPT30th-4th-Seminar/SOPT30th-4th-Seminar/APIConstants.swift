//
//  APIConstants.swift : API 주소 모음 구조체(struct)
//  SOPT30th-4th-Seminar
//
//  Created by subinyoon on 2022/05/07.
//

import Foundation

struct APIConstants {
    
    // MARK: - Base URL
    static let baseURL = "http://13.124.62.236"
    
    // MARK: - Feature URL
    /// loginURL = "http://13.124.62.236/auth/signin"
    static let loginURL = baseURL + "/auth/signin"
    
    /// signupURL = "http://13.124.62.236/auth/signup"
    static let signupURL = baseURL + "/auth/signup"
    
}
