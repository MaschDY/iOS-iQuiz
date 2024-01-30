//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Leonardo Covelo da Paz on 17/12/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    private var pontuation = 0
    private var questionNumber = 0
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    @IBAction func answerButtonClick(_ sender: UIButton) {
        let isCorrectAnswer = questions[questionNumber].correctAnswer == sender.tag
        
        if isCorrectAnswer {
            pontuation += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        } else {
            self.goToScoreScreen()
        }
    }
    
    private func goToScoreScreen() {
        performSegue(withIdentifier: "goToScoreScreen", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let scoreVC = segue.destination as? ScoreViewController else { return }
        scoreVC.pontuation = self.pontuation
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureLayout()
        self.configureQuestion()
    }
    
    private func configureLayout() {
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        answerButtons.forEach { button in
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc private func configureQuestion() {
        questionTitleLabel.text = questions[self.questionNumber].title
        for button in answerButtons {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
}
