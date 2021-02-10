//
//  ViewController.swift
//  TinderApp
//
//  Created by Yugo Matsuda on 2021-02-01.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
          super.viewDidLoad()
          
          view.backgroundColor = .white
          
          let topControllView = TopControllView()
          
          let cardView = CardView()
          
          let bottomControllView = BottomControllView()
          
        let stackView = UIStackView(arrangedSubviews: [topControllView, cardView, bottomControllView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        
        self.view.addSubview(stackView)
        
        [
            topControllView.heightAnchor.constraint(equalToConstant: 100),
            bottomControllView.heightAnchor.constraint(equalToConstant: 120),
            
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor)]
            .forEach { $0.isActive = true }
                
                  
          
          // Do any additional setup after loading the view.
      }

}



