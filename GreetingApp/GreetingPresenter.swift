//
//  GreetingPresenter.swift
//  GreetingApp
//
//  Created by Alexander Shevtsov on 11.05.2025.
//

protocol GreetingPresenterProtocol {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
    private unowned let view: GreetingViewProtocol
    private let person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
    self.view = view
    self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.name) \(person.surname)!"
        view.setGreeting(greeting)
    }
}
