//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by Ксения Митранова on 07.12.2023.
//

import Foundation

protocol QuestionFactoryProtocol {
    func requestNextQuestion() -> QuizQuestion?
}


class QuestionFactory: QuestionFactoryProtocol {
    
    private let questionFactory: QuestionFactoryProtocol = QuestionFactory()
}
