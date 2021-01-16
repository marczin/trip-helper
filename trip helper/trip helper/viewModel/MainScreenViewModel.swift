//
//  MainScreenViewModel.swift
//  trip helper
//
//  Created by Marcin Rosół on 15/01/2021.
//

import UIKit

protocol MainScreenViewModelDelegate: AnyObject {
    func MainScreenViewModelWants(_ mainScreenViewModel : MainScreenViewModel, Present controller: UITabBarController)
}

protocol MainScreenViewModelProtocol {
    func setUp(tableView : UITableView)
}

class MainScreenViewModel: NSObject, MainScreenViewModelProtocol {
    
    // MARK: - declarations
    
    weak var mainScreenDelegate: MainScreenViewModelDelegate?
    
    var array: [Trip] = [Trip(title: "title"),]
    
    // MARK: - functions
    func setUp(tableView : UITableView) {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TripTableViewCell.self, forCellReuseIdentifier: String(describing: TripTableViewCell.self))
    }
    
    private func openNewController() {
        let tabBarController = TabBarViewController()
        mainScreenDelegate?.MainScreenViewModelWants(self, Present: tabBarController)
    }
    
}

extension MainScreenViewModel: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TripTableViewCell.self), for: indexPath)  as? TripTableViewCell else { return UITableViewCell.init() }
        cell.data = array[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        openNewController()
    }
    
    
}
