//
//  NetworkResult.swift : 서버 통신 결과 처리를 위한 열거형(enum)
//  SOPT30th-4th-Seminar
//
//  Created by subinyoon on 2022/05/07.
//

import Foundation

enum NetworkResult<T> {
    case success(T)    // 서버 통신 성공
    case requestErr(T) // 요청 에러 발생
    case pathErr       // 경로 에러
    case serverErr     // 서버 내부 에러
    case networkFail   // 네트워크 연결 실패
}
