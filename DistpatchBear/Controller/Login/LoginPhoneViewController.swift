//
//  LoginPhoneViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 14/11/2021.
//

import UIKit

class LoginPhoneViewController: UIViewController {
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    static let storyboardId = String(describing: LoginPhoneViewController.self)
    
    @IBOutlet weak var showNextViewBtn: UIButton!
    
    lazy var rightBarBtn: UIBarButtonItem = {
        let btn = UIBarButtonItem()
        btn.title = "Sign In"
        btn.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor(named: "SecondaryColor")!], for: .normal)
        btn.target = self
        btn.action = #selector(presentSignInPage)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        navigationItem.rightBarButtonItem = rightBarBtn
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(popCurrentView))
        
        showNextViewBtn.addTarget(self, action: #selector(presentTandAView), for: .touchUpInside)
        
        setUpView()
    }
    
    func setUpView(){
        showNextViewBtn.layer.cornerRadius = showNextViewBtn.layer.frame.height / 2
    }
    
    @objc func presentTandAView(){
        guard let sb = storyBoard.instantiateViewController(
            withIdentifier: TandAViewController.storyboardId) as? TandAViewController else{
                fatalError("Counldn't instantiate TandAViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
    @objc func popCurrentView(){
        navigationController?.popViewController(animated: true)
    }
    
    @objc func presentSignInPage(){
        print("it really crazy")
        guard let sb = storyBoard.instantiateViewController(
            withIdentifier: SignInViewController.storyboardId) as? SignInViewController else{
                fatalError("Counldn't instantiate GetEstimateViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
}
