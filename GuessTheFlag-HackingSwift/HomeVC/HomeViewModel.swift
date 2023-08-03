//
//  HomeViewModel.swift
//  GuessTheFlag-HackingSwift
//
//  Created by Mert Deniz Akbaş on 31.07.2023.
//

import Foundation


protocol homeViewModelProtocol {
    var view: homeVCProtocol? { get set }
    
    func viewDidLoad()
    func updateLayout()
}

final class HomeViewModel {
    weak var view: homeVCProtocol?
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var highScore = 0
    
}

extension HomeViewModel: homeViewModelProtocol {
    
    func viewDidLoad() {
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        view?.buttonColor()
        updateLayout()
    }
    
    func updateLayout() {
        correctAnswer = Int.random(in: 0...2)
        countries.shuffle()
        view?.askQuestion()
    }
    
    
    
}
