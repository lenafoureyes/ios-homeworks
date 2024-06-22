//
//  ProfileViewController.swift
//  Navigation1
//
//  Created by Елена Хайрова on 29.05.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    var profileHeaderView: ProfileHeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray

        
        profileHeaderView = ProfileHeaderView()
        self.view.addSubview(profileHeaderView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        profileHeaderView.frame = self.view.frame
    }
}
