//
//  GreetingConfigurator.swift
//  GreetingApp
//
//  Created by Alexander Shevtsov on 18.05.2025.
//

import Foundation

protocol GreetingConfiguratorInputProtocol {
   func configure(withView view: GreetingViewController)
}

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(withView view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
