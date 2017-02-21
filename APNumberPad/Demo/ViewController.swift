//
//  ViewController.swift
//  Demo
//
//  Created by DianQK on 21/02/2017.
//  Copyright © 2017 dianqk. All rights reserved.
//

import UIKit
import APNumberPad

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let numberPad = APNumberPad(delegate: self)
        numberPad.leftFunctionButton.setTitle("拼音", for: .normal)
        numberPad.leftFunctionButton.titleLabel?.adjustsFontSizeToFitWidth = true

        textField.inputView = numberPad

    }
}

extension ViewController: APNumberPadDelegate {

    func numberPad(_ numberPad: APNumberPad, functionButtonAction functionButton: UIButton, textInput: UIResponder) {
        _ = textField.resignFirstResponder()
        textField.inputView = nil
        _ = textField.becomeFirstResponder()
    }

}
