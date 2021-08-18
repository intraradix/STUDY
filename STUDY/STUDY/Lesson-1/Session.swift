//
//  Session.swift
//  STUDY
//
//  Created by nilyina on 17.08.2021.
//

import UIKit

class Session {
    var token: String = ""
    var userId: Int = 0
    
    static let shared = Session()
    
    func viewDidLoad() {
        let session = Session.shared.token
        

    }
    
}
