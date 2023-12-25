//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by Ксения Митранова on 07.12.2023.
//

import Foundation

protocol QuestionFactoryProtocol {
    var delegate: QuestionFactoryDelegate? {get set}
    func requestNextQuestion()
    func loadData()
}


