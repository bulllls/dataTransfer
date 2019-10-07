//
//  DelegateViewController.swift
//  Data
//
//  Created by Ruslan on 10/7/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController {
    
    var delegat: DataDelegat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
    
    
    @IBAction func onButtonAction() {
        delegat?.onDataReady(type: "Data Ruslan done")
        self.navigationController?.popViewController(animated: true)
    }

}
