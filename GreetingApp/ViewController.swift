//
//  ViewController.swift
//  GreetingApp
//
//  Created by Alexander Shevtsov on 10.05.2025.
//

import UIKit

class GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        viewModel = GreetingViewModel(person: person)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        viewModel.showGreeting()
    }
}

