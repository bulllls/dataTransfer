//
//  ViewController.swift
//  Data
//
//  Created by Ruslan on 10/7/19.
//  Copyright © 2019 Ruslan Filistovich. All rights reserved.
//

import UIKit

protocol DataDelegat {
    func onDataReady(type: String)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    /// 1
    @IBAction func pushAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "PushViewController") as? PushViewController else { return }
        vc.text = "Ruslan"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    ///2
    @IBAction func segueAction(_ sender: Any) {
        //передаем любой объект через сегвей
        self.performSegue(withIdentifier: "showVC", sender: "Ruslan")
    }
    //обрабатываем переданные данные из functionAction
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showVC" {
            if let vc = segue.destination as? SegueViewController {
                guard let text = sender as? String else { return }
                vc.text = text
            }
        }
    }
    
    ///3
    @IBAction func funcAction(_ sender: Any) {
        let vc = FunctionViewController()
        vc.viewController = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func onUserAction(data: String) {
        print("Data received: \(data)")
    }
    
    ///4
    @IBAction func delegateAction(_ sender: Any) {
        let vc = DelegateViewController()
        vc.delegat = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    ///5
    @IBAction func closureAction(_ sender: Any) {
        let vc = ClosureViewController()
        vc.completion = { text in
            print("text", text)
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    ///6
    static let notificationName = Notification.Name("MyNC")
    
    @IBAction func ncAction(_ sender: Any) {
        let vc = NCViewController()
        NotificationCenter.default.addObserver(self,
                                           selector:#selector(onNotificaton(notification:)),
                                           name: ViewController.notificationName,
                                           object: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func onNotificaton(notification: Notification) {
        print(notification.userInfo)
    }
}


extension ViewController: DataDelegat {
    func onDataReady(type: String) {
        print("Done data \(type)")
    }
}
