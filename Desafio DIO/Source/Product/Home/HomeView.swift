//
//  HomeView.swift
//  Desafio DIO
//
//  Created by Leonardo Almeida on 30/07/22.
//

import UIKit

class HomeView: UIView {
    
    // MARK: - UI
    lazy var userImage: UIImageView = {
        var image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "ball")
        image.contentMode = .scaleToFill
        image.layer.cornerRadius = 50
        image.clipsToBounds = true
        
        return image
    }()
    
    lazy var userLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 24, weight: UIFont.Weight.medium)
        label.textColor = .white
        
        return label
    }()
    
    lazy var countryLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: UIFont.Weight.regular)
        label.textColor = .white
        
        return label
    }()
    
    lazy var positionLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = .white
        
        return label
    }()
    
    lazy var circlePercentualLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .init(white: 1, alpha: 0.7)
        
        label.font = .systemFont(ofSize: 20, weight: UIFont.Weight.regular)
        label.textColor = .purple
        label.textAlignment = .center
        
        label.layer.cornerRadius = 40
        label.clipsToBounds = true
        
        return label
    }()
    
    lazy var wordCupWinProgress: WordCupProgress = {
        var progress = WordCupProgress()
        progress.titleLabel.text = "Copas do Mundo Vencidas"
        return progress
    }()
    
    lazy var wordCupDisputeProgress: WordCupProgress = {
        var progress = WordCupProgress()
        progress.titleLabel.text = "Copas do Mundo Disputadas"
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
        backgroundColor = UIColor(patternImage: UIImage(named: "background.png") ?? UIImage())
    
        addSubview(userImage)
        addSubview(userLabel)
        addSubview(countryLabel)
        addSubview(positionLabel)
        addSubview(circlePercentualLabel)
        addSubview(wordCupWinProgress)
        addSubview(wordCupDisputeProgress)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            userImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            userImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            userImage.heightAnchor.constraint(equalToConstant: 100),
            userImage.widthAnchor.constraint(equalToConstant: 100),
            
            userLabel.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 20),
            userLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            countryLabel.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 10),
            countryLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            positionLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 10),
            positionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            circlePercentualLabel.topAnchor.constraint(equalTo: positionLabel.bottomAnchor, constant: 20),
            circlePercentualLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            circlePercentualLabel.heightAnchor.constraint(equalToConstant: 80),
            circlePercentualLabel.widthAnchor.constraint(equalToConstant: 80),
            
            wordCupWinProgress.topAnchor.constraint(equalTo: circlePercentualLabel.bottomAnchor, constant: 40),
            wordCupWinProgress.centerXAnchor.constraint(equalTo: self.centerXAnchor),

            wordCupDisputeProgress.topAnchor.constraint(equalTo: wordCupWinProgress.bottomAnchor, constant: 80),
            wordCupDisputeProgress.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
}
