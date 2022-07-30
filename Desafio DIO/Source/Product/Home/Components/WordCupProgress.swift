//
//  WordCupProgress.swift
//  Desafio DIO
//
//  Created by Leonardo Almeida on 30/07/22.
//

import UIKit

class WordCupProgress: UIView {
    
    // MARK: - UI
    lazy var titleLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = .white
        
        return label
    }()
    
    lazy var plaLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = .white
        label.layer.zPosition = 2
        
        return label
    }()
    
    lazy var positionLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = .white
        
        return label
    }()
    
    lazy var progressBar: UIProgressView = {
        var progress = UIProgressView()
        progress.translatesAutoresizingMaskIntoConstraints = false
        progress.progressTintColor = .purple
        
        progress.layer.cornerRadius = 10
        progress.layer.borderColor = UIColor.white.cgColor
        progress.layer.borderWidth = 1
        progress.clipsToBounds = true
        
        return progress
    }()
    
    
    // MARK: - INITIALIZER
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - SETUP VIEW
    private func setupView() {
        setup()
        setConstraints()
    }
    
    private func setup() {
		translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(plaLabel)
        addSubview(positionLabel)
        addSubview(progressBar)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor,constant:  20),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            progressBar.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            progressBar.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            progressBar.heightAnchor.constraint(equalToConstant: 26),
            progressBar.widthAnchor.constraint(equalToConstant: 250),
            
            positionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            positionLabel.leadingAnchor.constraint(equalTo: progressBar.trailingAnchor, constant: 5),
            
            plaLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            plaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: -80)
        ])
    }
    
}
