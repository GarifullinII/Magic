//
//  ViewController.swift
//  Magic
//
//  Created by Ildar Garifullin on 17/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let magicLabel: UILabel = {
        let label = UILabel()
        label.text = "Ask Me Anything..."
        label.textColor = .white
        label.font = label.font.withSize(45)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let magicUIImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ball1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let magicButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ask", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(45)
        button.setTitleColor(#colorLiteral(red: 0.3828315139, green: 0.8034424186, blue: 0.9958037734, alpha: 1), for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(magicButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.3828315139, green: 0.8034424186, blue: 0.9958037734, alpha: 1)
        
        setupViews()
        setConstraints()
    }
    
    @objc private func magicButtonTapped() {
        print("Hello")
    }
    
    private func setupViews() {
        view.addSubview(magicLabel)
        view.addSubview(magicUIImageView)
        view.addSubview(magicButton)
    }
}

extension ViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            magicLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            magicLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            magicLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            magicLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            magicUIImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            magicUIImageView.topAnchor.constraint(equalTo: magicLabel.bottomAnchor, constant: 50),
            magicUIImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
        
        NSLayoutConstraint.activate([
            magicButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            magicButton.topAnchor.constraint(equalTo: magicUIImageView.bottomAnchor, constant: 50),
            magicButton.widthAnchor.constraint(equalToConstant: 150),
            magicButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
