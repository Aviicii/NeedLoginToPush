//
//  AViewController.swift
//  NeedLoginToPush
//
//  Created by Avicii on 2024/8/1.
//

import UIKit

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "A"
        view.backgroundColor = .green
        
        UserDefaults.standard.setValue("", forKey: "userToken")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            self.navigateToViewController(BViewController.self) { vc in
                vc.title = "B"
                vc.btnTitle = "123"
            }
        })
    }


}

