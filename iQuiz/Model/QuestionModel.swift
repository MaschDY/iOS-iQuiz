//
//  QuestionModel.swift
//  iQuiz
//
//  Created by Leonardo Covelo da Paz on 14/01/24.
//

import Foundation

struct QuestionModel {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [QuestionModel] = [
    QuestionModel(
        title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?",
        answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"],
        correctAnswer: 2
    ),
    QuestionModel(
        title: "Em que ano Avatar 2 foi lançado?",
        answers: ["2019", "2022", "2023"],
        correctAnswer: 1
    ),
    QuestionModel(
        title: "Em que ano Vingadores Ultimato foi lançado?",
        answers: ["2019", "2018", "2017"],
        correctAnswer: 0
    )
]
