//
//  HomeViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 15/11/2021.
//

import UIKit

class HomeViewController: UIViewController {
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    static let storyboardId = String(describing: HomeViewController.self)

    @IBOutlet weak var userInfo: UIImageView!
    
    @IBOutlet weak var findDispacher: UIView!
    @IBOutlet weak var trackPackage: UIView!
    @IBOutlet weak var history: UIView!
    @IBOutlet weak var yourWallet: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        addGeturefunc()
        setUpView()
    }
    
    func addGeturefunc(){
        
        let userInfoTapGR = UITapGestureRecognizer(target: self, action: #selector(userInfoTapGeture(gesture:)))
        userInfo.addGestureRecognizer(userInfoTapGR)
        userInfo.isUserInteractionEnabled = true
        
        let tapGR1 = UITapGestureRecognizer(target: self, action: #selector(trackPackageTapGeture1(gesture:)))
        let tapGR2 = UITapGestureRecognizer(target: self, action: #selector(trackPackageTapGeture2(gesture:)))
        let tapGR3 = UITapGestureRecognizer(target: self, action: #selector(trackPackageTapGeture3(gesture:)))
        let tapGR4 = UITapGestureRecognizer(target: self, action: #selector(trackPackageTapGeture4(gesture:)))
        findDispacher.addGestureRecognizer(tapGR1)
        trackPackage.addGestureRecognizer(tapGR2)
        history.addGestureRecognizer(tapGR3)
        yourWallet.addGestureRecognizer(tapGR4)
    }
    
    @objc func userInfoTapGeture(gesture: UIGestureRecognizer){
        print("Got it yuou know")
        guard let sb = storyboard?.instantiateViewController(
            withIdentifier: UserInfoViewController.storyboardId) as? UserInfoViewController else{
                fatalError("Counldn't instantiate UserInfoViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
    @objc func trackPackageTapGeture1(gesture: UITapGestureRecognizer){
        print("finding dispatcher")
    }
    @objc func trackPackageTapGeture2(gesture: UITapGestureRecognizer){
        guard let sb = storyboard?.instantiateViewController(
            withIdentifier: TrackPackageViewController.storyboardId) as? TrackPackageViewController else{
                fatalError("Counldn't instantiate TrackPackageViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    @objc func trackPackageTapGeture3(gesture: UITapGestureRecognizer){
        guard let sb = storyboard?.instantiateViewController(
            withIdentifier: HistoryViewController.storyboardId) as? HistoryViewController else{
                fatalError("Counldn't instantiate HistoryViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    @objc func trackPackageTapGeture4(gesture: UITapGestureRecognizer){
        guard let sb = storyboard?.instantiateViewController(
            withIdentifier: YourWalletViewController.storyboardId) as? YourWalletViewController else{
                fatalError("Counldn't instantiate YourWalletViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
    func setUpView(){
        findDispacher.layer.borderWidth = 1
        findDispacher.layer.borderColor = UIColor.lightGray.cgColor
        findDispacher.layer.cornerRadius = 6
        
        trackPackage.layer.borderWidth = 1
        trackPackage.layer.borderColor = UIColor.lightGray.cgColor
        trackPackage.layer.cornerRadius = 6
        
        history.layer.borderWidth = 1
        history.layer.borderColor = UIColor.lightGray.cgColor
        history.layer.cornerRadius = 6
        
        yourWallet.layer.borderWidth = 1
        yourWallet.layer.borderColor = UIColor.lightGray.cgColor
        yourWallet.layer.cornerRadius = 6
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
