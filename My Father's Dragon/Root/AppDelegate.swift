//
//  AppDelegate.swift
//  My Father's Dragon
//
//  Created by Marcy Vernon on 7/4/20.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        application.isStatusBarHidden = true
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {

    }
}

// FlimFlam
//
//    var window: UIWindow?
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        window?.backgroundColor = UIColor(red: (0/255), green: (134/255) , blue:  (165/255), alpha: 1.0)
//        return true
//    }
    
//    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
//        return [.portraitUpsideDown, .portrait]
//    }

//    func applicationWillResignActive   (_ application: UIApplication) {}
//    func applicationDidEnterBackground (_ application: UIApplication) {}
//    func applicationWillEnterForeground(_ application: UIApplication) {}
//    func applicationDidBecomeActive    (_ application: UIApplication) {}
//    func applicationWillTerminate      (_ application: UIApplication) {}
//}

