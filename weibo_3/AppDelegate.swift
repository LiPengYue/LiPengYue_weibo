//
//  AppDelegate.swift
//  weibo
//
//  Created by 李鹏跃 on 16/11/30.
//  Copyright © 2016年 13lipengyue. All rights reserved.
//

import UIKit
import SVProgressHUD
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        SVProgressHUD.setMinimumDismissTimeInterval(1)
        //创建window
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = WBTabBarController()
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor.white
        //接受通知
        NotificationCenter.default.addObserver(self, selector: #selector(renewRootVC (noti:)), name: NSNotification.Name(rawValue: ReNewWindowRootVC), object: nil)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    
    
    //MARK: 更改window的rootViewcontroller
    func renewRootVC (noti: Notification) -> Void {
        let obj = noti.object as? UIViewController
        if obj is WBOAuthLoginWebVC {
            window?.rootViewController = WBWelcomeVC()
        }else{
            window?.rootViewController = WBTabBarController()
        }
    }
}

