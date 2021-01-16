//
//  ItemListViewController.swift
//  trip helper
//
//  Created by Marcin Rosół on 16/01/2021.
//

import UIKit

class ItemListViewController: UIViewController {

    // MARK: - declarations

    var itemListView = ItemListView()
    
    // MARK: - initial
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = itemListView
    }
    
    override func viewDidLoad() {
    }
    
    // MARK: - functions

    private func userPressReturButton(controller mainController: MainScreenController){
        present(mainController, animated: false)
    }
}

