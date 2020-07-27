//
//  ServiceError.swift
//  MyWeatherForecast
//
//  Created by 윤병일 on 2020/07/27.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import Foundation

enum ServiceError : Error {
  case invalidURL
  case clientError(Error)
  case invalidStatusCode
  case noData
  case decodingError(Error)
}
