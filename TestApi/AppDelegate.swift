//
//  AppDelegate.swift
//  TestApi
//
//  Created by Kurban on 17.06.2020.
//  Copyright © 2020 Kurban. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow()
        self.window?.rootViewController = EntryListAssembly().view()
        self.window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }
}

