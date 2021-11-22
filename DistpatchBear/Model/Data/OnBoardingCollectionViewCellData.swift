//
//  OnBoardingCollectionViewCellData.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 10/11/2021.
//

import Foundation
import UIKit


class OnBoardingCollectionViewCellData {
    
    let iconImage: UIImage!
    let viewTitle: String
    
    init(iconImage: UIImage, viewTitle: String){
        self.iconImage = iconImage
        self.viewTitle = viewTitle
    }
    
}

extension OnBoardingCollectionViewCellData{
    static var list = [
            OnBoardingCollectionViewCellData(iconImage: UIImage(systemName: "bicycle")!, viewTitle: "deliver items to our customers within hours"),
            OnBoardingCollectionViewCellData(iconImage: UIImage(systemName: "iphone.homebutton")!, viewTitle: "track the rider & your package in..."),
            OnBoardingCollectionViewCellData(iconImage: UIImage(systemName: "arrow.turn.up.forward.iphone")!, viewTitle: "share delivery infomation with reciept"),
        ]
}
