//
//  SignUpNavbtn.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 14/11/2021.
//

import UIKit

class SignUpNavbtn: UIView {
    
    lazy var SignInBtn: UIButton = {
        let btn = UIButton()
        btn.setAttributedTitle(NSAttributedString(string: "Sign In", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor(named: "SecondaryColor")!]), for: .normal)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        addSubview(SignInBtn)
        setupLayout()
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            SignInBtn.topAnchor.constraint(equalTo: topAnchor),
            SignInBtn.bottomAnchor.constraint(equalTo: bottomAnchor),
            SignInBtn.leadingAnchor.constraint(equalTo: leadingAnchor),
            SignInBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        ])
    }
    
    //custom views should override this to return true if
    //they cannot layout correctly using autoresizing.
    //from apple docs https://developer.apple.com/documentation/uikit/uiview/1622549-requiresconstraintbasedlayout
    override class var requiresConstraintBasedLayout: Bool {
        return true
    }
}


