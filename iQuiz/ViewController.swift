//
//  ViewController.swift
//  iQuiz
//
//  Created by Leonardo Covelo da Paz on 15/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonStartQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtonLayout()
    }
    
    func configureButtonLayout() {
        buttonStartQuiz.layer.cornerRadius = 12
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        print("Button Start Quiz Clicked!")
    }
}
