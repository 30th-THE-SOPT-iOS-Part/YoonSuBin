//
//  HomeStoryTableViewCell.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/29.
//

import UIKit

class HomeStoryTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    static let identifier = "HomeStoryTableViewCell"

    // MARK: - UI Component Part
    @IBOutlet weak var storyCollectionView: UICollectionView!
    
    // MARK: - awakeFromNib
    override func awakeFromNib() {
        super.awakeFromNib()
        registerNib()
    }
    
    // MARK: - CollectionView registerNib Part
    private func registerNib() {
        
        let collectionNib = UINib(nibName: HomeStoryCollectionViewCell.identifier, bundle: nil)
        storyCollectionView.register(collectionNib, forCellWithReuseIdentifier: HomeStoryCollectionViewCell.identifier)
        
        storyCollectionView.delegate = self
        storyCollectionView.dataSource = self
    }
}

// MARK: - UICollectionView Delegate
extension HomeStoryTableViewCell: UICollectionViewDelegate {
    
}

// MARK: - UICollectionView DataSource
extension HomeStoryTableViewCell: UICollectionViewDataSource {
    
    /// 컬렉션 뷰의 전체 section수를 지정하는 메서드
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HomeStoryDataModel.storySampleData.count
    }
    
    /// 컬렉션 뷰에서 특정 index에 있는 셀을 알려주는 메서드
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = storyCollectionView.dequeueReusableCell(withReuseIdentifier: HomeStoryCollectionViewCell.identifier, for: indexPath) as? HomeStoryCollectionViewCell else { return UICollectionViewCell() }
        
        cell.setDataModel(storyData: HomeStoryDataModel.storySampleData[indexPath.row])
        
        return cell
    }
}

// MARK: - UICollectionView FlowLayou

/// 추가 셋팅 :  컬렉션 뷰 셀 정렬, 간격 지정
 extension HomeStoryTableViewCell: UICollectionViewDelegateFlowLayout {
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         return CGSize(width: 58, height: 72)
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
         return UIEdgeInsets(top: 0, left: 6, bottom: 0, right: 6)
     }

     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
         return 4
     }
 }

