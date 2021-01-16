//
//  TabBarViewController.swift
//  trip helper
//
//  Created by Marcin Rosół on 16/01/2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    // MARK: - declarations
    
    var itemListViewController : ItemListViewController = {
        let itemListViewController = ItemListViewController()
        itemListViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        return itemListViewController
    }()
    
    lazy var tabBarViewModel: TabBarViewModelProtocol = {
        let tabBarViewModel = TabBarViewModel()
        tabBarViewModel.tabBarViewModelDelegate = self
        return tabBarViewModel
    }()
    
    // MARK: - initial
    
    override func viewDidLoad() {
        setupViewControllers()
    }
    // MARK: - functions
    
    private func setupViewControllers(){
        
        let viewControllers : [UINavigationController] = [itemListViewController].map({
            let returnButton = UIBarButtonItem(barButtonSystemItem: .redo , target: tabBarViewModel, action: #selector(tabBarViewModel.onPressReturnButton))
            $0.navigationItem.leftBarButtonItems = [returnButton]
            let navigationController = UINavigationController(rootViewController: $0)
            return navigationController
        })
        setViewControllers(viewControllers, animated: false)
        modalPresentationStyle = .fullScreen
    }
    
    private func userPressReturnButton(controller: MainScreenController){
        present(controller, animated: true)
    }
    
}

extension TabBarViewController : TabBarViewModelDelegate {
    func ItemListViewModelWants(_ itemListViewModel: TabBarViewModel, open controller: MainScreenController) {
        userPressReturnButton(controller: controller)
    }
}
