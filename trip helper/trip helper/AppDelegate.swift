//
//  AppDelegate.swift
//  trip helper
//
//  Created by Marcin Rosół on 14/01/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = MainScreenController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        return true
    }
}

