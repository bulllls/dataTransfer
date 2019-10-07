//
//  NCViewController.swift
//  Data
//
//  Created by Ruslan on 10/7/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class NCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }



    @IBAction func onButtonAction() {
          self.navigationController?.popViewController(animated: true)
         NotificationCenter.default.post(name: ViewController.notificationName, object: nil, userInfo: ["data": 23])
      }
}
