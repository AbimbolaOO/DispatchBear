//
//  ProfileViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 15/11/2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    static let storyboardId = String(describing: ProfileViewController.self)
    
    lazy var rightBarBtn: UIBarButtonItem = {
        let btn = UIBarButtonItem()
        btn.title = "Finish"
        btn.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor(named: "SecondaryColor")!], for: .normal)
        btn.target = self
        btn.action = #selector(presentValidateProfileView)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        navigationItem.rightBarButtonItem = rightBarBtn
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(popCurrentView))
        
    }
    
    @objc func presentValidateProfileView(){
        guard let sb = storyBoard.instantiateViewController(
            withIdentifier: ValidateProfileViewController.storyboardId) as? ValidateProfileViewController else{
                fatalError("Counldn't instantiate ValidateProfileViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
    @objc func popCurrentView(){
        navigationController?.popViewController(animated: true)
    }

}
