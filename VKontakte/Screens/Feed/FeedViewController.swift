//
//  FeedViewController.swift
//  VKontakte
//
//  Created by Valery Shel on 28.01.2021.
//

import UIKit

final class FeedViewController: UIViewController {

    private lazy var feedContainerView: FeedContainerView = {
        let feedView = FeedContainerView()
        feedView.backgroundColor = .white
        
        return feedView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedContainerView.onTap = { [weak self] in
            let vc = PostViewController()
            self?.navigationController?.pushViewController(vc, animated: true)
        }
        
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubviews(feedContainerView)
        
        let constraints = [
            
            feedContainerView.topAnchor.constraint(equalTo: view.topAnchor),
            feedContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            feedContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            feedContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    

}
