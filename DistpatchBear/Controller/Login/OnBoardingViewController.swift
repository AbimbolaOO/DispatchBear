//
//  OnBoardingViewController.swift
//  DistpatchBear
//
//  Created by Olayemi Abimbola on 10/11/2021.
//

import UIKit

class OnBoardingViewController: UICollectionViewController{
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    init(){
        
        let layout = UICollectionViewCompositionalLayout { (sectionNumber, _) -> NSCollectionLayoutSection?  in
            switch sectionNumber{
            case 0:
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.10)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                return section
                
            case 1:
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                item.contentInsets = .init(top: 0, leading: 20, bottom: 0, trailing: 20)
                let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.60)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .groupPaging
                
                return section
                
            default:
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.25)), subitems: [item])
                group.contentInsets = .init(top: 0, leading: 0, bottom: 10, trailing: 0)
                let section = NSCollectionLayoutSection(group: group)
                
                return section
                
            }
        }
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.bounces = false
        collectionView.isScrollEnabled = false
        collectionView.showsVerticalScrollIndicator = false
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "id")
        
        collectionView.register(UINib(nibName: OnBoardingLogoCollectionViewCell.reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: OnBoardingLogoCollectionViewCell.reuseIdentifier)
        collectionView.register(UINib(nibName: OnBoardingCollectionViewCellTop.reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: OnBoardingCollectionViewCellTop.reuseIdentifier)
        collectionView.register(UINib(nibName: OnBoardingCollectionViewCellBottom.reuseIdentifier, bundle: nil), forCellWithReuseIdentifier: OnBoardingCollectionViewCellBottom.reuseIdentifier)
        collectionView.layer.backgroundColor = UIColor.white.cgColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section{
        case 0:
            return 1
        case 1:
            return 3
        default:
            return 1
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnBoardingLogoCollectionViewCell.reuseIdentifier, for: indexPath) as? OnBoardingLogoCollectionViewCell else{
                fatalError("couldn't create cell")
            }
            return cell
            
        case 1:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnBoardingCollectionViewCellTop.reuseIdentifier, for: indexPath) as? OnBoardingCollectionViewCellTop else{
                fatalError("couldn't create cell")
            }
            cell.data = OnBoardingCollectionViewCellData.list[indexPath.row]
//            cell.swipeableCellDelegate = self
//            let swipeGestureRight = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe(_:)))
//            swipeGestureRight.direction = .right
//            cell.addGestureRecognizer(swipeGestureRight)
            return cell
            
        default:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnBoardingCollectionViewCellBottom.reuseIdentifier, for: indexPath) as? OnBoardingCollectionViewCellBottom else{
                fatalError("couldn't create cell")
            }
            cell.GetEstimateDelegate = self
            cell.LoginViewDelegate = self
            
            return cell
        }
    }
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("Thuis life")
    }
    
//    @objc func didSwipe(_:UIGestureRecognizer){
//        print("cats")
//    }
    
//    shouldRecognizeSimultaneouslyWithGestureRecognizer
//    shouldRec
    
//    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
//        for cell in collectionView.visibleCells {
//            let indexPath = collectionView.indexPath(for: cell)
//            print(indexPath)
//        }
//    }
    
    //    private var lastContentOffset: CGFloat = 0
//    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("welcome man")
        //        if lastContentOffset > scrollView.contentOffset.y && lastContentOffset < scrollView.contentSize.height - scrollView.frame.height {
        //            // move up
        //            print("move up")
        //            originalHeight ()
        //        } else if lastContentOffset < scrollView.contentOffset.y && scrollView.contentOffset.y > 0 {
        //            // move down
        //            print("move down")
        //            minimizeHeaderView()
        //        }
        //
        //        // update the new position acquired
        //        lastContentOffset = scrollView.contentOffset.y
//    }
    
    //    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    ////        let currentIndex = scrollView.contentOffset.x / CGFloat((itemWidth + interitemSpacing / 2))
    //        print("currentIndex")
    //    }
    
    //    func popSignUpScreen(currentPage: Int){
    //        if currentPage < OnBoardingCollectionViewCellData.list.count - 1 {
    //            let indexPath = IndexPath(item: currentPage + 1, section: 0)
    //            collectionView.scrollToItem(at: indexPath, at: .right, animated: true)
    //        }else{
    //            let signUpViewController = storyBoard.instantiateViewController(withIdentifier: SignUpViewController.storyboardId) as! SignUpViewController
    //            navigationController?.pushViewController(signUpViewController, animated: true)
    //        }
    //    }
}


extension OnBoardingViewController: PresentGetEstimateDelegate{
    func presentGetEstimate() {
        guard let sb = storyBoard.instantiateViewController(
            withIdentifier: GetEstimateViewController.storyboardId) as? GetEstimateViewController else{
                fatalError("Counldn't instantiate GetEstimateViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
}

extension OnBoardingViewController: PresentLoginViewDelegate{
    func presentLoginView() {
        guard let sb = storyBoard.instantiateViewController(
            withIdentifier: SignInViewController.storyboardId) as? SignInViewController else{
                fatalError("Counldn't instantiate SignInViewController from storyboard")
            }
        navigationController?.pushViewController(sb, animated: true)
    }
}

extension OnBoardingViewController: SwipeableCollectionViewCellDelegate{
    func hiddenContainerViewTapped() {
        print("One love")
    }
}
