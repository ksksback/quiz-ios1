//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Ксения Митранова on 13.12.2023.
//

import Foundation
import UIKit

protocol AlertPresenterProtocol{
    
    func show(alertModel: AlertModel)
}

final class AlertPresenterImplemenatation{
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }
}

extension AlertPresenterImplemenatation: AlertPresenterProtocol {
    func show(alertModel: AlertModel) {
        let alert = UIAlertController(
            title: alertModel.title,
            message: alertModel.message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
            
            alertModel.buttonAction()
        }
        
        alert.addAction(action)
        
        viewController?.present(alert, animated: true)
        
    }
    
}
