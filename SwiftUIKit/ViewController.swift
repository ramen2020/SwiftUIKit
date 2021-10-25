//
//  ViewController.swift
//  SwiftUIKit
//
//  Created by 宮本光直 on 2021/10/25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SwiftUIButtonTapped(_ sender: Any) {
        print(":::: swiftUIの画面へ遷移")
        let vc = UIHostingController(rootView: TestView())
        self.present(vc, animated: true)
    }

}

