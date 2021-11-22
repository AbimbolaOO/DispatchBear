//
//  OnBoardingCollectionViewCellBottom.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 10/11/2021.
//

import UIKit

protocol PresentGetEstimateDelegate: AnyObject{
    func presentGetEstimate()
}

protocol PresentLoginViewDelegate: AnyObject{
    func presentLoginView()
}

class OnBoardingCollectionViewCellBottom: UICollectionViewCell {
    
    weak var GetEstimateDelegate: PresentGetEstimateDelegate?
    weak var LoginViewDelegate: PresentLoginViewDelegate?
    
    static let reuseIdentifier = String(describing: OnBoardingCollectionViewCellBottom.self)

    @IBOutlet weak var getEstimateBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
        getEstimateBtn.addTarget(self, action: #selector(presentEstimateView), for: .touchUpInside)
        loginBtn.addTarget(self, action: #selector(presentLoginView), for: .touchUpInside)
    }
    
    func setUpView(){
        loginBtn.layer.cornerRadius = 6
        getEstimateBtn.layer.cornerRadius = 6
    }
    
    @objc func presentEstimateView(){
        GetEstimateDelegate?.presentGetEstimate()
    }
    
    @objc func presentLoginView(){
        print("It is working")
        LoginViewDelegate?.presentLoginView()
    }
}
