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
        setupLayout()
        view.backgroundColor = .white
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            let registerController = RegisterViewController()
            registerController.modalPresentationStyle = .fullScreen
            self.present(registerController, animated: true)
        }
    }
    private func setupLayout() {
            view.backgroundColor = .white
            
            let topControlView = TopControllView()
            let cardView = CardView() // cardView
            let bottomControlView = BottomControllView()
            
            let stackView = UIStackView(arrangedSubviews: [topControlView, cardView, bottomControlView])
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.axis = .vertical
            
            self.view.addSubview(stackView)
            
            [
                topControlView.heightAnchor.constraint(equalToConstant: 100),
                bottomControlView.heightAnchor.constraint(equalToConstant: 120),
                
                stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
                stackView.rightAnchor.constraint(equalTo: view.rightAnchor)]
                .forEach { $0.isActive = true }
                    
            
        }
}



