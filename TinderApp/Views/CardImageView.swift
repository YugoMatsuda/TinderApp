//
//  CardImageView.swift
//  TinderApp
//
//  Created by Yugo Matsuda on 2021-02-16.
//

import UIKit

class CardImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        layer.cornerRadius = 10
        contentMode = .scaleAspectFill
        image = UIImage(named: "test-image2")
        clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
