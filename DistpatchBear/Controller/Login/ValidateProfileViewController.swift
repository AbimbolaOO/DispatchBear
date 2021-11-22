//
//  ValidateProfileViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 15/11/2021.
//

import UIKit

class ValidateProfileViewController: UIViewController {
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    static let storyboardId = String(describing: ValidateProfileViewController.self)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {[self] in
            guard let sb = storyBoard.instantiateViewController(
                withIdentifier: HomeViewController.storyboardId) as? HomeViewController else{
                    fatalError("Counldn't instantiate HomeViewController from storyboard")
                }
            navigationController?.pushViewController(sb, animated: true)
        }
    }

}
