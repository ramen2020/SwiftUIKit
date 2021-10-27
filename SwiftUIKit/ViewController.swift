//
//  ViewController.swift
//  SwiftUIKit
//
//  Created by 宮本光直 on 2021/10/25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    @IBAction func swiftUIButtonTapped(_ sender: Any) {
        print(":::: swiftUIの画面へ遷移")
        let vc = UIHostingController(rootView: TestView())
        self.present(vc, animated: true)
    }

}

// MARK: TableView
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        let view = TestView()
        let hostingController = UIHostingController(rootView: view)
        cell.contentView.addSubview(hostingController.view)

        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        hostingController.view.heightAnchor.constraint(equalToConstant: 0).isActive = true
        hostingController.view.bottomAnchor.constraint(equalTo: cell.bottomAnchor, constant: 0).isActive = true
        hostingController.view.topAnchor.constraint(equalTo: cell.topAnchor, constant: 0).isActive = true
        hostingController.view.leftAnchor.constraint(equalTo: cell.leftAnchor, constant: 0).isActive = true
        hostingController.view.rightAnchor.constraint(equalTo: cell.rightAnchor, constant: 0).isActive = true
        hostingController.view.centerYAnchor.constraint(equalTo: cell.centerYAnchor).isActive = true
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
}
