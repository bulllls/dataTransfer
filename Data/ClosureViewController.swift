//
//  ClosureViewController.swift
//  Data
//
//  Created by Ruslan on 10/7/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class ClosureViewController: UIViewController {
    
    var completion: ((String) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func onButtonAction() {
        completion?("Succes")
        self.navigationController?.popViewController(animated: true)
    }
}
