//
//  HomeVC.swift
//  GuessTheFlag-HackingSwift
//
//  Created by Mert Deniz Akbaş on 31.07.2023.
//

import UIKit

protocol homeVCProtocol: AnyObject {
    func buttonColor()
    func askQuestion()
}

final class HomeVC: UIViewController {
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!

    @IBAction func buttonTapped(_ sender: UIButton) {
        var messageTitle: String
        if sender.tag == viewModel.correctAnswer {
            messageTitle = "Correct"
            viewModel.score += 1
        }else {
            messageTitle = "Wrong"
            viewModel.score -= 1
        }
    
        let alertController = UIAlertController(title: messageTitle, message: "Your score is \(viewModel.score)", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Continue", style: .default) { _ in
            self.viewModel.updateLayout()
            self.title = self.viewModel.countries[self.viewModel.correctAnswer].uppercased()
        })
        present(alertController, animated: true)
    }
    
    private let viewModel = HomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        viewModel.viewDidLoad()
        
        title = viewModel.countries[viewModel.correctAnswer].uppercased()
    }
}

extension HomeVC: homeVCProtocol {
    func buttonColor() {
        button1.setBorder(borderWidth: 1, borderColor: UIColor.lightGray.cgColor)
        button2.setBorder(borderWidth: 1, borderColor: UIColor.lightGray.cgColor)
        button3.setBorder(borderWidth: 1, borderColor: UIColor.lightGray.cgColor)
    }
    func askQuestion() {
        button1.setImage(UIImage(named: viewModel.countries[0]), for: .normal)
        button2.setImage(UIImage(named: viewModel.countries[1]), for: .normal)
        button3.setImage(UIImage(named: viewModel.countries[2]), for: .normal)
    }

}

