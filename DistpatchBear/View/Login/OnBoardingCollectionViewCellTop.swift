//
//  OnBoardingCollectionViewCellTop.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 10/11/2021.
//

import UIKit

protocol SwipeableCollectionViewCellDelegate: AnyObject {
    func hiddenContainerViewTapped()
}

class OnBoardingCollectionViewCellTop: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: OnBoardingCollectionViewCellTop.self)
    
    weak var swipeableCellDelegate: SwipeableCollectionViewCellDelegate?
    
    var data: OnBoardingCollectionViewCellData!{
        didSet{
            iconImage.image = data.iconImage
            viewTitle.text = data.viewTitle
        }
    }
    
    @IBOutlet weak var viewTitle: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var hiddenContainerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupGestureRecognizer()
    }
    
    private func setupGestureRecognizer() {
        let swipeGestureRight = UISwipeGestureRecognizer(target: self, action: #selector(hiddenContainerViewTapped(_:)))
//        swipeGestureRight.direction = .right
        hiddenContainerView.addGestureRecognizer(swipeGestureRight)
        hiddenContainerView.isUserInteractionEnabled = true
    }
    
    @objc private func hiddenContainerViewTapped(_: UIGestureRecognizer) {
        swipeableCellDelegate?.hiddenContainerViewTapped()
    }
    
}
//let swipeGestureRight = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe(_:)))
//            swipeGestureRight.direction = .right
//            cell.addGestureRecognizer(swipeGestureRight)
