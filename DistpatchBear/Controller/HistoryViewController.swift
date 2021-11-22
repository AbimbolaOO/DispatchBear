//
//  HistoryViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 18/11/2021.
//

import UIKit

class HistoryViewController: UIViewController {
    
    static let storyboardId = String(describing: HistoryViewController.self)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(popCurrentView))
        }

    @objc func popCurrentView(){
        navigationController?.popViewController(animated: true)
    }
    
}
