//
//  PhotosTableViewCell.swift
//  Navigation1
//
//  Created by Елена Хайрова on 16.08.2024.
//

import UIKit

import UIKit

class PhotosTableViewCell: UICollectionViewCell {
    static var images: [UIImage] = [
        UIImage(named: "cat1")!,
        UIImage(named: "cat2")!,
        UIImage(named: "cat3")!,
        UIImage(named: "cat4")!,
        UIImage(named: "cat5")!,
        UIImage(named: "cat6")!,
        UIImage(named: "cat7")!,
        UIImage(named: "cat8")!,
        UIImage(named: "cat9")!,
        UIImage(named: "cat10")!,
        UIImage(named: "cat11")!,
        UIImage(named: "cat12")!,
        UIImage(named: "cat13")!,
        UIImage(named: "cat14")!,
        UIImage(named: "cat15")!,
        UIImage(named: "cat16")!,
        UIImage(named: "cat17")!,
        UIImage(named: "cat18")!,
        UIImage(named: "cat19")!,
        UIImage(named: "cat20")!,
    ]
    
    static let reuseIdentifier = "PhotosTableViewCell"
    
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell() {
        contentView.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        contentView.clipsToBounds = true
        
        imageView.layer.cornerRadius = 6
        imageView.layer.masksToBounds = true
    }
    
    func configure(with index: Int) {
        imageView.image = PhotosTableViewCell.images[index]
    }
}
