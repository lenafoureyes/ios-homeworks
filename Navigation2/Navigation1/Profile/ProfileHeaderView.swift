//
//  ProfileHeaderView.swift
//  Navigation1
//
//  Created by Елена Хайрова on 17.06.2024.
//

import UIKit

class ProfileHeaderView: UIView {
    let avatarImageView = UIImageView()
    let nameLabel = UILabel()
    let descriptionLabel = UILabel()
    let button = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    private func setupViews() {
        
        avatarImageView.image = UIImage(named: "cat")
        avatarImageView.frame = CGRect(x: 16, y: 56, width: 150, height: 150)
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = (UIColor(white: 242.0/255.0, alpha: 1.0)).cgColor
        avatarImageView.contentMode = .scaleToFill
        avatarImageView.clipsToBounds = true
        avatarImageView.layer.cornerRadius = 75
        avatarImageView.translatesAutoresizingMaskIntoConstraints = true
        addSubview(avatarImageView)
        
        
        nameLabel.text = "Cat"
        nameLabel.frame = CGRect(x: (UIScreen.main.bounds.width - (frame.width - 40)) / 2, y:  67, width: frame.width - 40, height: 30)
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        nameLabel.textColor = .black
        nameLabel.translatesAutoresizingMaskIntoConstraints = true
        addSubview(nameLabel)
        
        descriptionLabel.text = "mew"
        descriptionLabel.frame = CGRect(x: (UIScreen.main.bounds.width - (frame.width - 40)) / 2, y: 160, width: frame.width - 40, height: 30)
        descriptionLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        descriptionLabel.textColor = .darkGray
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = true
        addSubview(descriptionLabel)
        
        button.setTitle("Нажми меня", for: .normal)
        button.frame = CGRect(x: 16, y: 160 + 30 + 34, width: UIScreen.main.bounds.width - 32, height: 50)
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4 
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        
        addSubview(button)
        
    }
    
    @objc func buttonPressed() {
        if let text = descriptionLabel.text {
            print(text)
        }
        
    }
    
}
