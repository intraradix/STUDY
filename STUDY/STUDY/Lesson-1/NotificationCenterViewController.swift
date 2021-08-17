//
//  NotificationCenterViewController.swift
//  STUDY
//
//  Created by nilyina on 17.08.2021.
//

import UIKit

let backgroundChangeColorNotification = Notification.Name("backgroundChangeColor")

class NotificationCenterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor), name: backgroundChangeColorNotification, object: nil)
    }
    @objc private func changeColor(notification: NotificationCenter) {
        view.backgroundColor = .red
        
    }
    @IBAction func changeColorAction(_ sender: Any) {
        NotificationCenter.default.post(name: backgroundChangeColorNotification, object: nil, userInfo: nil)
    }
}
