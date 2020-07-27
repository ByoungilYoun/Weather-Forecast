//
//  AppDelegate.swift
//  MyWeatherForecast
//
//  Created by 윤병일 on 2020/07/27.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
 
    window = UIWindow(frame: UIScreen.main.bounds)
    window?.backgroundColor = .systemBackground
    let rootViewController = WeatherCasterViewController()
    rootViewController.forecastService = ForecastServiceStub()
    window?.rootViewController = rootViewController
    window?.makeKeyAndVisible()
    return true
  }
}

