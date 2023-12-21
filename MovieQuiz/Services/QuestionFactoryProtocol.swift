//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by Ксения Митранова on 07.12.2023.
//

import Foundation

protocol QuestionFactoryProtocol {
    func requestNextQuestion()
    var delegate: QuestionFactoryDelegate? {get set}
}


