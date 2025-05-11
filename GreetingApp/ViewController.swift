//
//  ViewController.swift
//  GreetingApp
//
//  Created by Alexander Shevtsov on 10.05.2025.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

class GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    private var presenter: GreetingPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        presenter = GreetingPresenter(view: self, person: person)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        presenter.showGreeting()
    }
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        self.greetingLabel.text = greeting
    }
}
