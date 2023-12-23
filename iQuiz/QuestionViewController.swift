//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Leonardo Covelo da Paz on 17/12/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    
    @IBOutlet var responseButtons: [UIButton]!
    
    @IBAction func responseButtonClick(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLayout()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        
        responseButtons.forEach { button in
            button.layer.cornerRadius = 12.0
        }
    }
}
