//
//  ViewController.swift
//  Kuluma
//
//  Created by Thanyani on 2020/06/26.
//  Copyright © 2020 Thanyani. All rights reserved.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
          
          let isLoggedIn = UserDefaults.standard.bool(forKey: "Logged_in")
          if !isLoggedIn{
              let vc = LoginViewController()
              let nav = UINavigationController(rootViewController: vc)
              nav.modalPresentationStyle = .fullScreen
              present(nav, animated: false)
          }
      }
}

