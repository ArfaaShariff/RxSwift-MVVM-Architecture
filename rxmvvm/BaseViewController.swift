//
//  BaseViewController.swift
//  rxmvvm
//
//  Created by Daniel Christopher on 2/5/17.
//
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    func bindToViewModel() {
        preconditionFailure("Must override.")
    }
}
