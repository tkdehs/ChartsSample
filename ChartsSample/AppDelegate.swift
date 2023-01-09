//
//  AppDelegate.swift
//  ChartsSample
//
//  Created by PNX on 2023/01/09.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    /// 메인 윈도우
    var window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController.init(rootViewController: ViewController())
        self.window?.makeKeyAndVisible()
        return true
    }

}

