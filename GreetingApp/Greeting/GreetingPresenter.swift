//
//  GreetingPresenter.swift
//  GreetingApp
//
//  Created by Alexander Shevtsov on 18.05.2025.
//

import Foundation

struct GreetingData {
    let name: String
    let surname: String
}

class GreetingPresenter: GreetingViewOutputProtocol {
    unowned private let view: GreetingViewInputProtocol
    var interactor: GreetingInteractorInputProtocol!
    
    required init(view: GreetingViewInputProtocol) {
        self.view = view
    }
    
    func didTapShowGreetingButton() {
        interactor.provideGreetingData()
    }
}

// MARK: - GreetingInteractorOutputProtocol
extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "Hello, \(greetingData.name) \(greetingData.surname)!"
        view.setGreeting(greeting)
    }
}
