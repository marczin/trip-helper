//
//  MainScreenController.swift
//  trip helper
//
//  Created by Marcin Rosół on 14/01/2021.
//

import UIKit

class MainScreenController: UIViewController {
    
    // MARK: - declarations
    let mainScreenView = MainScreenView()
    
    lazy var mainScreenViewModel: MainScreenViewModelProtocol = {
        let mainScreenViewModel = MainScreenViewModel()
        mainScreenViewModel.mainScreenDelegate = self
        return mainScreenViewModel
    }()
    
    // MARK: - initial
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = mainScreenView
    }
    
    override func viewDidLoad() {
        mainScreenViewModel.setUp(tableView: mainScreenView.tripTable)
    }
    
    // MARK: - functions
    
    private func presentTabBarController(controller: UITabBarController){
        present(controller, animated: true)
    }
}

extension MainScreenController: MainScreenViewModelDelegate {
    
    func MainScreenViewModelWants(_ mainScreenViewModel: MainScreenViewModel, Present controller: UITabBarController) {
        presentTabBarController(controller: controller)
    }
    
    
}
