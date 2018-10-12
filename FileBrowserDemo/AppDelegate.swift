//
//  AppDelegate.swift
//  FileBrowserDemo
//
//  Created by RockerHX on 2018/10/11.
//  Copyright © 2018 RockerHX. All rights reserved.
//


import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        if url.scheme == "file" {
            print(url)
            print(options)
        }
        return true
    }


}

