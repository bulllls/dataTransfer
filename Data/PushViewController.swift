//
//  PushViewController.swift
//  Data
//
//  Created by Ruslan on 10/7/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = text
        
    }
    
}
