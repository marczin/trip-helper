//
//  TabBarViewModel.swift
//  trip helper
//
//  Created by Marcin Rosół on 16/01/2021.
//

import UIKit

protocol TabBarViewModelDelegate: AnyObject {
    func ItemListViewModelWants(_ itemListViewModel: TabBarViewModel, open controller: MainScreenController)
}

@objc protocol TabBarViewModelProtocol {
    @objc func onPressReturnButton()
}

class TabBarViewModel: NSObject, TabBarViewModelProtocol {
    
    weak var tabBarViewModelDelegate: TabBarViewModelDelegate?
    
    @objc func onPressReturnButton() {
        let mainController = MainScreenController()
        mainController.modalPresentationStyle = .fullScreen
        tabBarViewModelDelegate?.ItemListViewModelWants(self, open: mainController)
    }
    
    
    
}
