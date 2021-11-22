//
//  TrackPackageViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 18/11/2021.
//

import UIKit

class TrackPackageViewController: UIViewController {
    
    static let storyboardId = String(describing: TrackPackageViewController.self)
    
    @IBOutlet weak var showNextViewBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(popCurrentView))
        setUpView()
    }
    
    func setUpView(){
        showNextViewBtn.layer.cornerRadius = showNextViewBtn.layer.frame.height / 2
    }
    
    @objc func popCurrentView(){
        navigationController?.popViewController(animated: true)
    }
    
}
