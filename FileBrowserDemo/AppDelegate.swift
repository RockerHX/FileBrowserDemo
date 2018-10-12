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
            // 对于私有文件夹需要先申请访问权限（如果是第三方应用分享的文件，具有可访问性，此操作不会成功，以此就能区分系统和第三方应用，无需额外操作）
            let access = url.startAccessingSecurityScopedResource()
            if access {
                do {
                    let data = try Data(contentsOf: url)
                    guard let fileName = url.pathComponents.last else { return true }
                    let path = NSHomeDirectory() + "/Documents/\(fileName)"
                    let fileURL = URL(fileURLWithPath: path)
                    try data.write(to: fileURL)
                } catch {
                    print(error)
                }
                // 文件夹访问权限使用完毕需要释放权限
                url.stopAccessingSecurityScopedResource()
            }
        }
        return true
    }


}

