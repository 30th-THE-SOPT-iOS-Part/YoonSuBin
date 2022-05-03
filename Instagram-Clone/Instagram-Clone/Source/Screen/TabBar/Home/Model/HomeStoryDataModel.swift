//
//  HomeStoryDataModel.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/29.
//

import UIKit

struct HomeStoryDataModel {
    let profileImage: String
    let profileUsername: String
}

extension HomeStoryDataModel {
    static let storySampleData: [HomeStoryDataModel] = [
        HomeStoryDataModel(profileImage: "Chanmi", profileUsername: "chanmi"),
        HomeStoryDataModel(profileImage: "Minjae", profileUsername: "minjae"),
        HomeStoryDataModel(profileImage: "Sejin", profileUsername: "sejin"),
        HomeStoryDataModel(profileImage: "Sua", profileUsername: "sua"),
        HomeStoryDataModel(profileImage: "YoungIn", profileUsername: "youngin"),
        HomeStoryDataModel(profileImage: "Youngrin", profileUsername: "youngrin"),
        HomeStoryDataModel(profileImage: "Subin", profileUsername: "subin")
    ]
}
