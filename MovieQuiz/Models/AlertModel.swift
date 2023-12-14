//
//  AlertModel.swift
//  MovieQuiz
//
//  Created by Ксения Митранова on 13.12.2023.
//

import Foundation

struct AlertModel{
    let title: String
    let message: String
    let buttonText: String
    let buttonAction: () -> Void
}
