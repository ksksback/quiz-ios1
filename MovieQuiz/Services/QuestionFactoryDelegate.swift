//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Ксения Митранова on 13.12.2023.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
    func didLoadDataFromServer() 
    func didFailToLoadData(with error: Error)
}
