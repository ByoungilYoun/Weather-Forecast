//
//  WeatherCasterViewController.swift
//  MyWeatherForecast
//
//  Created by 윤병일 on 2020/07/27.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import UIKit

class WeatherCasterViewController : UIViewController {
  
  //MARK: - Propertes
  var forecastService : ForecastServiceable!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    forecastService.fetchWeatherForecast(endpoint: .init(path: .weather)) { result in
      switch result {
      case .success(let value) :
        print(value)
      case .failure(let error) :
        print("현재 날씨 가져오기 실패. \(error)")
      }
    }
  }
}
