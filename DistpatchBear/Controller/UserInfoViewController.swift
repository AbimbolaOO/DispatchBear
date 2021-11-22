//
//  UserInfoViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 21/11/2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    static let storyboardId = String(describing: UserInfoViewController.self)
    
    @IBOutlet weak var fullName: UIView!
    @IBOutlet weak var phoneNum: UIView!
    @IBOutlet weak var inviteFriends: UIView!
    @IBOutlet weak var removeCard: UIView!
    @IBOutlet weak var rmPassword: UIView!
    @IBOutlet weak var privacyPolicy: UIView!
    @IBOutlet weak var logout: UIView!
    
    lazy var rightBarBtn: UIBarButtonItem = {
        let btn = UIBarButtonItem()
        btn.title = "Done"
        btn.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor(named: "SecondaryColor")!], for: .normal)
        btn.target = self
        btn.action = #selector(saveChanges)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(popCurrentView))
        
        navigationItem.rightBarButtonItem = rightBarBtn
        
        navigationItem.title = "Profile"
        
        setUpView()
    }

    @objc func saveChanges(){
        print("Saving user profile to DB!")
    }
    
    @objc func popCurrentView(){
        navigationController?.popViewController(animated: true)
    }
    
    func setUpView(){
        fullName.layer.borderWidth = 1
        fullName.layer.cornerRadius = 6
        fullName.layer.borderColor = UIColor.lightGray.cgColor
        
        phoneNum.layer.borderWidth = 1
        phoneNum.layer.cornerRadius = 6
        phoneNum.layer.borderColor = UIColor.lightGray.cgColor
        
        inviteFriends.layer.borderWidth = 1
        inviteFriends.layer.cornerRadius = 6
        inviteFriends.layer.borderColor = UIColor.lightGray.cgColor
        
        removeCard.layer.borderWidth = 1
        removeCard.layer.cornerRadius = 6
        removeCard.layer.borderColor = UIColor.lightGray.cgColor
        
        rmPassword.layer.borderWidth = 1
        rmPassword.layer.cornerRadius = 6
        rmPassword.layer.borderColor = UIColor.lightGray.cgColor
        
        privacyPolicy.layer.borderWidth = 1
        privacyPolicy.layer.cornerRadius = 6
        privacyPolicy.layer.borderColor = UIColor.lightGray.cgColor
        
        logout.layer.borderWidth = 1
        logout.layer.cornerRadius = 6
        logout.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    
}
