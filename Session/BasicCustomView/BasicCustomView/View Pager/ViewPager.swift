//
//  ViewPager.swift
//  BasicCustomView
//
//  Created by subinyoon on 2022/05/24.
//

import UIKit

class ViewPager: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showViewPagerTapped(_ sender: Any) {
        guard let customViewPager = self.storyboard?.instantiateViewController(withIdentifier: "CustomViewPager") as? CustomViewPager else { return }
        self.navigationController?.pushViewController(customViewPager, animated: true)
    }
}
