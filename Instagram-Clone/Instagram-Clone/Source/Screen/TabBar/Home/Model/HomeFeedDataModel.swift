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
    
    var photo: [String]
    let likes: Int
    
    var userCaption: String? { return "\(profileUsername) \(caption)" }
    
    let caption: String
    let comments: Int
}

extension HomeFeedDataModel {
    static let feedSampleData: [HomeFeedDataModel] = [
        HomeFeedDataModel(
            profileImage: "Subin3",
            profileUsername: "subin3",
            photo: [],
            likes: 176,
            caption: "스타벅스 입장권 준비완.\n근데 이제 민재는 엑코가 꺼지는 맥북을 곁들인 ... 💻",
            comments: 32
        ),
        HomeFeedDataModel(
            profileImage: "Subin",
            profileUsername: "subin",
            photo: [],
            likes: 61,
            caption: "파일 날라가서 과제를 두 번한 사람이 있다❓💥",
            comments: 14
        ),
        HomeFeedDataModel(
            profileImage: "Subin",
            profileUsername: "subin",
            photo: [],
            likes: 47,
            caption: "같이 바다 놀러가실 분 ~ 나 수영 잘함 🐬 어푸 어푸 🌊",
            comments: 11
        ),
        HomeFeedDataModel(
            profileImage: "Subin2",
            profileUsername: "subin2",
            photo: [],
            likes: 15,
            caption: "고독한 수빈이 뒷모습",
            comments: 9
        ),
        HomeFeedDataModel(
            profileImage: "Subin3",
            profileUsername: "subin3",
            photo: [],
            likes: 72,
            caption: "하늘 예쁘다 💙",
            comments: 9
        )
    ]
}
