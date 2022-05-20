//
//  ImageService.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/05/15.
//

import Foundation
import Alamofire

class ImageService {
    static let shared = ImageService()
    
    private init() {}
    
    // MARK: - getImage
    func getImage(completion: @escaping (NetworkResult<Any>) -> (Void)) {
        let url = APIConstants.imageURL
        let header: HTTPHeaders = ["Content-Type" : "application/json"]
        let parameter: Parameters = ["page": 1, "limit": 15]
        
        let dataRequest = AF.request(url,
                                     method: .get,
                                     parameters: parameter,
                                     encoding: URLEncoding.default,
                                     headers: header)
        
        dataRequest.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else { return }
                guard let value = dataResponse.value else { return }
                
                let networkResult = NetworkHelper.parseJSON(by: statusCode, data: value, type: [ImageData].self)
                completion(networkResult)
                
            case .failure:
                completion(.networkFail)
            }
        }
    }
}
