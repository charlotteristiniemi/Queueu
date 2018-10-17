//
//  JoinVC.swift
//  Queueu
//
//  Created by Charlotte Ristiniemi on 2018-10-10.
//  Copyright © 2018 Charlotte Ristiniemi. All rights reserved.
//

import UIKit

class JoinVC: UIViewController, UITextFieldDelegate {

  // MARK: Properties
  @IBOutlet weak var textFieldName: UITextField!
  @IBOutlet weak var textFieldCode: UITextField!
  @IBOutlet weak var btnJoin: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.hideKeyboardWhenTappedAround()
    textFieldName.delegate = self
    textFieldCode.delegate = self
    btnJoin.backgroundColor = UIColor.Primary.OpacityDark
    btnJoin.setTitleColor(UIColor.Greys.OpacityLight, for: .normal)
  }
  
  // MARK: TextField Delegate
  func textFieldDidEndEditing(_ textField: UITextField) {
    
    if textFieldCode.text == "" || textFieldName.text == "" {
      btnJoin.backgroundColor = UIColor.Primary.OpacityDark
      btnJoin.setTitleColor(UIColor.Greys.OpacityLight, for: .normal)
      btnJoin.isUserInteractionEnabled = false
    } else {
      btnJoin.backgroundColor = UIColor.Accent.Regular
      btnJoin.setTitleColor(UIColor.Greys.Light, for: .normal)
      btnJoin.isUserInteractionEnabled = true
    }
  }
  
  // MARK: - Navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
}

/* Resign Keyboard */
extension UIViewController {
  func hideKeyboardWhenTappedAround() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    tap.cancelsTouchesInView = false
    view.addGestureRecognizer(tap)
  }
  
  @objc func dismissKeyboard() {
    view.endEditing(true)
  }
}
