//
//  SignupModel.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/14.
//

import Foundation

struct SignupResponse: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: SignupData?
}

struct SignupData: Codable {
    let id: Int
}
