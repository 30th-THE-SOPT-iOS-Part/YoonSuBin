//
//  HomeFeedImageModel.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/05/14.
//

import Foundation


struct ImageData: Codable {
    let id: String
    let author: String
    let width: Int
    let height: Int
    let url: String
    let download_url: String
}
