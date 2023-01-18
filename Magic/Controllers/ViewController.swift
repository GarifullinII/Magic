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
        label.font = label.font.withSize(40)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.3828315139, green: 0.8034424186, blue: 0.9958037734, alpha: 1)
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(magicLabel)
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
    }
}
