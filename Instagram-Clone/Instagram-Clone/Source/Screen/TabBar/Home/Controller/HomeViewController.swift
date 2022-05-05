//
//  HomeViewController.swift
//  Instagram-Clone
//
//  Created by subinyoon on 2022/04/17.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - Properties
    private enum SectionLayout: CaseIterable {
        case story, feed
    }

    // MARK: - UI Component Part
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var homeTableView: UITableView!
    
    // MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
    }
    
    // MARK: - IBAction Part
    @IBAction func addBtnDidTap(_ sender: Any) {
        print("add btn did tap")
    }

    @IBAction func likeBtnDidTap(_ sender: Any) {
        print("like btn did tap")
    }

    @IBAction func messageBtnDidTap(_ sender: Any) {
        print("message btn did tap")
    }
    
    // MARK: - TableViewCell registerNib Part
    private func registerNib() {
        
        let storyNib = UINib(nibName: HomeStoryTableViewCell.identifier, bundle: nil)
        homeTableView.register(storyNib, forCellReuseIdentifier: HomeStoryTableViewCell.identifier)
        
        let feedNib = UINib(nibName: HomeFeedTableViewCell.identifier, bundle: nil)
        homeTableView.register(feedNib, forCellReuseIdentifier: HomeFeedTableViewCell.identifier)
        
        homeTableView.rowHeight = UITableView.automaticDimension
        homeTableView.estimatedRowHeight = 488
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }
}


// MARK: - UITableView Delegate
extension HomeViewController: UITableViewDelegate {
    
}

// MARK: - UITableView DataSource
extension HomeViewController: UITableViewDataSource {
    
    /// 테이블 뷰의 전체 section수를 지정하는는 메서드
    func numberOfSections(in tableView: UITableView) -> Int {
        return SectionLayout.allCases.count
    }
    
    /// 테이블 뷰의 section의 index를 가지고 해당 sections에 포함된 셀 수를 알려주는 메서드
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionType = SectionLayout.allCases[section]
        switch sectionType {
        case .story:
            return 1
        case .feed:
            return HomeFeedDataModel.feedSampleData.count
        }
    }
    
    /// 테이블 뷰에서 특정 index에 있는 셀을 알려주는 메서드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionType = SectionLayout.allCases[indexPath.section]
        switch sectionType {
        case .story:
            guard let storyCell = homeTableView.dequeueReusableCell(withIdentifier: HomeStoryTableViewCell.identifier, for: indexPath) as? HomeStoryTableViewCell else { return UITableViewCell() }
            return storyCell
            
        case .feed:
            guard let feedCell = homeTableView.dequeueReusableCell(withIdentifier: HomeFeedTableViewCell.identifier, for: indexPath) as? HomeFeedTableViewCell else { return UITableViewCell() }
            
            feedCell.setDataModel(feedData: HomeFeedDataModel.feedSampleData[indexPath.row])
            
            feedCell.likesButtonEvent = {
                if feedCell.likeButton.isSelected == true {
                    feedCell.likesCount += 1
                } else {
                    feedCell.likesCount -= 1
                }
                feedCell.likeLabel.text = "좋아요 \(feedCell.likesCount!)개"
            }
            return feedCell
        }
    }
}
