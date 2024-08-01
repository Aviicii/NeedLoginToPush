//
//  ViewControllerExtension.swift
//  NeedLoginToPush
//
//  Created by Avicii on 2024/8/1.
//

import UIKit

protocol RequiresAuthentication {}

extension UIViewController {
    func navigateToViewController<T: UIViewController>(_ viewControllerType: T.Type, configure: ((T) -> Void)? = nil) where T: RequiresAuthentication {
        if let token = UserDefaults.standard.string(forKey: "userToken"), !token.isEmpty {
            let viewController = T()
            configure?(viewController)
            self.navigationController?.pushViewController(viewController, animated: true)
        } else {
            let loginVC = LoginViewController()
            loginVC.completionHandler = { [weak self] in
                let viewController = T()
                configure?(viewController)
                self?.navigationController?.pushViewController(viewController, animated: true)
            }
            self.present(loginVC, animated: true, completion: nil)
        }
    }
}

