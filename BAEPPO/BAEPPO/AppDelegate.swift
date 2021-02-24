//
//  AppDelegate.swift
//  BAEPPO
//
//  Created by Ethan on 2021/02/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if #available(iOS 13.0, *) {
            self.window?.overrideUserInterfaceStyle = .light
        }
        return true
    }

}

