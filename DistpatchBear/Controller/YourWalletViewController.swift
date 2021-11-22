//
//  YourWalletViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 18/11/2021.
//

import UIKit

class YourWalletViewController: UIViewController {
    
    static let storyboardId = String(describing: YourWalletViewController.self)
    
    @IBOutlet weak var topBoard: UIView!
    @IBOutlet weak var twoHView: UIView!
    @IBOutlet weak var fiveHView: UIView!
    @IBOutlet weak var tenHView: UIView!
    @IBOutlet weak var twentyHView: UIView!
    
    @IBOutlet weak var topUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(popCurrentView))
        
        setUpView()

    }
    
    func setUpView(){
        topBoard.layer.cornerRadius = 16
        twoHView.layer.cornerRadius = 8
        fiveHView.layer.cornerRadius = 8
        tenHView.layer.cornerRadius = 8
        twentyHView.layer.cornerRadius = 8
        
        topUpBtn.layer.cornerRadius = 6
    }
    
    @objc func popCurrentView(){
        navigationController?.popViewController(animated: true)
    }

}
