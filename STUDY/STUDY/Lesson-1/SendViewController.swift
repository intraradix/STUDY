//
//  SendViewController.swift
//  STUDY
//
//  Created by nilyina on 17.08.2021.
//

import UIKit

final class Account {
    private init() {}
    
    static let shared = Account()
    
    var name: String = ""
    var cash: Int = 0
}

class SendViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    
    let account = Account.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func sendCashAction(_ sender: Any) {
        //Оператор раннего выхода + разворачивание опционала
        
        guard let cashString = cashTextField.text, let cash = Int(cashString) ,
        let name = nameTextField.text else {
            return
        }
        account.cash = cash
        account.name = name
    }
}
