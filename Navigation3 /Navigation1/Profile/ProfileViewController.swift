//
//  ProfileViewController.swift
//  Navigation1
//
//  Created by Елена Хайрова on 29.05.2024.
//
import UIKit

class ProfileViewController: UIViewController {
    var profileHeaderView: ProfileHeaderView!
    var newButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray

        profileHeaderView = ProfileHeaderView()
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(profileHeaderView)
        
        newButton = UIButton(type: .system)
        newButton.setTitle("кнопка", for: .normal)
        newButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(newButton)
        
        setupConstraints()
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            profileHeaderView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            newButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            newButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
