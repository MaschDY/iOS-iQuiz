//
//  ScoreViewController.swift
//  iQuiz
//
//  Created by Leonardo Covelo da Paz on 18/01/24.
//

import UIKit

class ScoreViewController: UIViewController {
    
    var pontuation: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var restartQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureLayout()
        
        self.configureScore()
    }
    
    private func configureLayout() {
        navigationItem.hidesBackButton = true
        restartQuizButton.layer.cornerRadius = 12.0
    }
    
    private func configureScore() {
        guard let pontuation = pontuation else { return }
        resultLabel.text = "Você acertou \(pontuation) de \(questions.count) questões"
        
        let percent = (pontuation * 100) / questions.count
        percentLabel.text = "Percentual final: \(percent)%"
    }
}
