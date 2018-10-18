//
//  CloseVC.swift
//  Queueu
//
//  Created by Charlotte Ristiniemi on 2018-10-18.
//  Copyright © 2018 Charlotte Ristiniemi. All rights reserved.
//

import UIKit

//MARK: Delegate Protocol
protocol CloseVCDelegate: class {
  func dismissClose()
}

class CloseVC: UIViewController {

  weak var delegate: CloseVCDelegate?
  
  override func viewDidLoad() {
      super.viewDidLoad()

      // Do any additional setup after loading the view.
  }
    
  @IBAction func actionYesDismiss(_ sender: Any) {
    print("tjo")
    delegate?.dismissClose()
  }
  
  @IBAction func actionNoDismiss(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
}
