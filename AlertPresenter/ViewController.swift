//
//  ViewController.swift
//  AlertPresenter
//
//  Created by Vaibhav Misra on 28/09/18.
//  Copyright © 2018 Vaibhav Misra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func showAlert(_ sender: Any) {
        AlertPresenter().presentAlert(from: self, title: "Test Alert", msg: "Testing", actions: [UIAlertAction(title: "Ok", style: .default, handler: { (action) in
            print("Ok Pressed")
        })])
    }
}

