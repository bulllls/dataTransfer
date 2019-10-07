//
//  FunctionViewController.swift
//  Data
//
//  Created by Ruslan on 10/7/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class FunctionViewController: UIViewController {
   weak var viewController: ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onButtonAction() {
        viewController?.onUserAction(data: "Hi Rus")
        self.navigationController?.popViewController(animated: true)
    }
}
