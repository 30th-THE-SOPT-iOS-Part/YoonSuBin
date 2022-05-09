//
//  LoginModel.swift : 서버 통신 결과로 받는 응답 바디(response body)를 디코딩할 데이터 모델
//  SOPT30th-4th-Seminar
//
//  Created by subinyoon on 2022/05/07.
//

/*
 JSON 파일 특징 : 중괄호: 객체, 대활호: 오브젝트
 https://quicktype.io : JSON파일 에러 찾아주는 사이트
 */


import Foundation

struct LoginResponse: Codable { // Codable : Encodable, Decodable 프로토콜의 묶음
    let status: Int
    let success: Bool? // success 했을 때만 다루겠음
    let message: String? // 추후 수정 필요
    let data: LoginData? // 데이터 부분 옵셔널로 선언한 이유 : 로그인 실패했을 때 data가 안 넘어오기 때문
}

struct LoginData: Codable {
    let name: String
    let email: String
}

//struct LoginMessage: Codable {
//    let reason: String
//    let location: String
//}
