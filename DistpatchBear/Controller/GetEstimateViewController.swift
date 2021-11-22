//
//  GetEstimateViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 13/11/2021.
//

import UIKit

class GetEstimateViewController: UIViewController {
    
    static let storyboardId = String(describing: GetEstimateViewController.self)
    @IBOutlet weak var loginPhoneNumber: UIButton!
    @IBOutlet weak var signIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        loginPhoneNumber.addTarget(self, action: #selector(presentLoginPhoneNumView), for: .touchUpInside)
        signIn.addTarget(self, action: #selector(presentSignInView), for: .touchUpInside)
    }
    
    @objc func presentLoginPhoneNumView(){
        guard let sb = storyboard?.instantiateViewController(
            withIdentifier: LoginPhoneViewController.storyboardId) as? LoginPhoneViewController else{
                fatalError("Counldn't instantiate LoginPhoneViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
    @objc func presentSignInView(){
        guard let sb = storyboard?.instantiateViewController(
            withIdentifier: SignInViewController.storyboardId) as? SignInViewController else{
                fatalError("Counldn't instantiate SignInViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
}
