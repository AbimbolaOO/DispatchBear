//
//  TandAViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 15/11/2021.
//

import UIKit

class TandAViewController: UIViewController {
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    static let storyboardId = String(describing: TandAViewController.self)
    
    @IBOutlet weak var showNextViewBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(popCurrentView))
        
        showNextViewBtn.addTarget(self, action: #selector(presentProfileView), for: .touchUpInside)
        
        setUpView()
    }
    
    func setUpView(){
        showNextViewBtn.layer.cornerRadius = showNextViewBtn.layer.frame.height / 2
    }
    
    @objc func presentProfileView(){
        guard let sb = storyBoard.instantiateViewController(
            withIdentifier: ProfileViewController.storyboardId) as? ProfileViewController else{
                fatalError("Counldn't instantiate ProfileViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
    
    @objc func popCurrentView(){
        navigationController?.popViewController(animated: true)
    }
    
}
