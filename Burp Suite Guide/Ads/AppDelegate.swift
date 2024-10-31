//
//  AppDelegate.swift
//  Burp Suite Guide
//
//  Created by Akshay Bhasme on 30/10/24.
//import UIKit
import UIKit
import GoogleMobileAds

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Initialize Google Mobile Ads SDK
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        
        // Set test device identifiers
        GADMobileAds.sharedInstance().requestConfiguration.testDeviceIdentifiers = ["267836e9db0e64b757667e5be1026bb2"] // Replace with your test device ID
        
        return true
    }
}



