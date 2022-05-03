//
//  HomeStoryCollectionViewCell.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/28.
//

import UIKit

class HomeStoryCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    static let identifier = "HomeStoryCollectionViewCell"
    
    // MARK: - UI Component Part
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileUsernameLabel: UILabel!
    
    // MARK: - awakeFromNib
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
    
    // MARK: - Story Data Model과 연결
    func setDataModel(storyData: HomeStoryDataModel) {
        profileImageView.image = UIImage(named: storyData.profileImage)
        profileUsernameLabel.text = storyData.profileUsername
    }
    
    // MARK: - Custom UI
    func setUI() {
        /// 스토리 프로필 이미지를 둥글게 하고 검은색 배경을 줍니다.
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.layer.cornerRadius = frame.height / 3
        profileImageView.backgroundColor = .black
    }
}
