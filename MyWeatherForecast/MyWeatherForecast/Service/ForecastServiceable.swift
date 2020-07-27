//
//  ForecastServiceable.swift
//  MyWeatherForecast
//
//  Created by 윤병일 on 2020/07/27.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import Foundation

protocol ForecastServiceable {
  func fetchWeatherForecast (
    endpoint : Endpoint,
    completionHandler : @escaping (Result <Weather, ServiceError>) -> Void
  )
}
