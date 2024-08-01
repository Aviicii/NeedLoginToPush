//
//  LoginViewController.swift
//  NeedLoginToPush
//
//  Created by Avicii on 2024/8/1.
//

import UIKit

class LoginViewController: UIViewController {

    var completionHandler: (() -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            UserDefaults.standard.set("123", forKey: "userToken")
            self.dismiss(animated: true) {
                self.completionHandler?()
            }
        })
    }

    
}
