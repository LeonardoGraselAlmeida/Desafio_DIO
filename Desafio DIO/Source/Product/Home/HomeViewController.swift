//
//  HomeViewController.swift
//  Desafio DIO
//
//  Created by Leonardo Almeida on 30/07/22.
//

import UIKit

class HomeViewController: UIViewController {
    private let homeView: HomeView = HomeView()
    private let homeViewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        self.setupView()
    }
}

private extension HomeViewController {
    func setupView() {
        let userImageURL = self.homeViewModel.getUserImageURL()
        let userName = self.homeViewModel.getUserName()
        let country = self.homeViewModel.getCountry()
        let position = self.homeViewModel.getPosition()
        let percentual = self.homeViewModel.getPercentual()
        let wordCupWinProgressValue = self.homeViewModel.getWordCupWinProgressValue()
        let wordCupWinPla = self.homeViewModel.getWordCupWinPla()
        let wordCupWinPos = self.homeViewModel.getWordCupWinPos()
        let wordCupDisputeProgressValue = self.homeViewModel.getWordCupDisputeProgressValue()
        let wordCupDisputePla = self.homeViewModel.getWordCupDisputePla()
        let wordCupDisputePos = self.homeViewModel.getWordCupDisputePos()
        
        self.homeView.userImage.loadFrom(URLAddress: userImageURL)
        self.homeView.userLabel.text = userName
        self.homeView.countryLabel.text = country
        self.homeView.positionLabel.text = position
        self.homeView.circlePercentualLabel.text = percentual
        
        self.homeView.wordCupWinProgress.plaLabel.text = "\(wordCupWinPla)"
        self.homeView.wordCupWinProgress.positionLabel.text = "\(wordCupWinPos)º"
        self.homeView.wordCupWinProgress.progressBar.setProgress(wordCupWinProgressValue, animated: false)
        
        self.homeView.wordCupDisputeProgress.plaLabel.text = "\(wordCupDisputePla)"
        self.homeView.wordCupDisputeProgress.positionLabel.text = "\(wordCupDisputePos)º"
        self.homeView.wordCupDisputeProgress.progressBar.setProgress(wordCupDisputeProgressValue, animated: false)
        
    }
}
