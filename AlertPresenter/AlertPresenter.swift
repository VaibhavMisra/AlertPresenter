//
//  AlertPresenter.swift
//  AlertPresenter
//
//  Created by Vaibhav Misra on 28/09/18.
//  Copyright © 2018 Vaibhav Misra. All rights reserved.
//

import Foundation
import UIKit

protocol AlertView {
    var title: String? { get }
    var message: String? { get }
    func addAction(_ action: UIAlertAction)
}

extension UIAlertController : AlertView {
    
}

class AlertPresenter {
    var alertView: AlertView?
    
    func presentAlert(from: UIViewController, title: String, msg: String, actions:[UIAlertAction]) {
        alertView = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        for action in actions {
            alertView?.addAction(action)
        }
        from.present((alertView as! UIViewController), animated: true, completion: nil)
    }
}
