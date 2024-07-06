//
//  FeedViewController.swift
//  Navigation1
//
//  Created by Елена Хайрова on 29.05.2024.
//

import UIKit

class FeedViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton(frame: CGRectMake(50, 250, 50, 50))
        button.backgroundColor = .blue
        button.layer.cornerRadius = 12
        button.setTitle("пост", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        self.view.addSubview(button)
    }
    
    struct Post {
        var title: String
    }
    var post = Post(title: "Пост")
    
    @objc  func buttonAction(_ sender: UIButton) {
        let postViewController = PostViewController()
        postViewController.post = Post(title: "Пост")
        self.navigationController?.pushViewController(postViewController, animated: true)
    }
    
    
}
