//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Ксения Митранова on 13.12.2023.
//

import UIKit

protocol AlertPresenterProtocol{
    func show(alertModel: AlertModel,viewController: UIViewController)
}

final class AlertPresenter: AlertPresenterProtocol{
    private var presenter: MovieQuizPresenter?
    func show(alertModel: AlertModel, viewController: UIViewController) {
        let message = presenter?.makeResultMessage()
        let alert = UIAlertController(
            title: alertModel.title,
            message: message,
            preferredStyle: .alert
        )
        let action = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
                        alertModel.buttonAction()
            self.presenter?.restartGame()
        }
        alert.addAction(action)
        viewController.present(alert, animated: true, completion: nil)
    }
}
