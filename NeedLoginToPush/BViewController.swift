//
//  BViewController.swift
//  NeedLoginToPush
//
//  Created by Avicii on 2024/8/1.
//

import UIKit

class BViewController: UIViewController, RequiresAuthentication {
    
    var btnTitle:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        let btn = UIButton.init(frame: .init(x: 50, y: 150, width: 50, height: 50))
        btn.backgroundColor = .red
        btn.setTitle(btnTitle, for: .normal)
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(go), for: .touchUpInside)
    }
    
    @objc
    func go() {
        navigateToViewController(CViewController.self) { vc in
            vc.title = "C"
        }
    }

}
