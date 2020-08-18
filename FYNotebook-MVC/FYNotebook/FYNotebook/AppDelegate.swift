//
//  AppDelegate.swift
//  FYNotebook
//
//  Created by JackJin on 2019/10/23.
//  Copyright © 2019 xuehu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = FYHomeViewController()
        window?.makeKey()
        window?.makeKeyAndVisible()
        
        return true
    }
    
}

