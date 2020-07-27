//
//  Endpoint.swift
//  MyWeatherForecast
//
//  Created by 윤병일 on 2020/07/27.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import Foundation

struct Endpoint {
  let path : Path
}

extension Endpoint {
  enum Path : String {
    case weather
  }
}
