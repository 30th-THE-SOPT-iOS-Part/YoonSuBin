//
//  HomeFeedDataModel.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/29.
//

import UIKit

struct HomeFeedDataModel {
    let profileImage: String
    let profileUsername: String
    
    
    let photo: [String]
    let likes: Int
    
    var userCaption: String? { return "\(profileUsername) \(caption)" }
    
    let caption: String
    let comments: Int
}

extension HomeFeedDataModel {
    static let feedSampleData: [HomeFeedDataModel] = [
        HomeFeedDataModel(
            profileImage: "Subin3",
            profileUsername: "subin_sopt",
            photo: ["sopt1", "sopt2", "sopt3"],
            likes: 176,
            caption: "아요미 1호 인증완",
            comments: 32
        ),
        HomeFeedDataModel(
            profileImage: "Subin",
            profileUsername: "subin",
            photo: ["flower", "bear"],
            likes: 61,
            caption: "벚꽃 나들이 왔어요 💐",
            comments: 14
        ),
        HomeFeedDataModel(
            profileImage: "Subin",
            profileUsername: "subin",
            photo: ["duck"],
            likes: 47,
            caption: "시험 끝나고 석촌호수에 다시 오리...🐤 꽉꽉",
            comments: 11
        ),
        HomeFeedDataModel(
            profileImage: "starbooks",
            profileUsername: "starbooks_seoul",
            photo: ["coffee"],
            likes: 15,
            caption: "커피 한잔할래요?",
            comments: 9
        ),
        HomeFeedDataModel(
            profileImage: "iOS_logo",
            profileUsername: "i_know_i_yo",
            photo: ["i_know_i_yo"],
            likes: 72,
            caption: "그때 나는 무얼 하고 있었나... 그 엑코는 너무 아름다웠어. 이제는 나도 아요 알 수가 있어요~~ 💥 다음 주에는 어떤 특별 게스트가 올지 너무 기대된다... 사랑합니다 선배님들 !",
            comments: 9
        )
    ]
}
