//
//  SignUpViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 14/11/2021.
//

import UIKit

class SignInViewController: UIViewController {
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    static let storyboardId = String(describing: SignInViewController.self)
    
    @IBOutlet weak var siginBtn: UIButton!
    
    lazy var rightBarBtn: UIBarButtonItem = {
        let btn = UIBarButtonItem()
        btn.title = "Sign Up"
        btn.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor(named: "SecondaryColor")!], for: .normal)
        btn.target = self
        btn.action = #selector(presentSignUpPage)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        navigationItem.rightBarButtonItem = rightBarBtn
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        setUpView()
    }
    
    func setUpView(){
        siginBtn.layer.cornerRadius = 6
    }
    
    @objc func popCurrentView(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func presentSignUpPage(){
        print("it really crazy")
        guard let sb = storyBoard.instantiateViewController(
            withIdentifier: LoginPhoneViewController.storyboardId) as? LoginPhoneViewController else{
                fatalError("Counldn't instantiate LoginPhoneViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
}
