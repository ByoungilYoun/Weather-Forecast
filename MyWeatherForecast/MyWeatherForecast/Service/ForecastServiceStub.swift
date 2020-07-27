//
//  ForecastServiceStub.swift
//  MyWeatherForecast
//
//  Created by 윤병일 on 2020/07/27.
//  Copyright © 2020 Byoungil Youn. All rights reserved.
//

import Foundation

// 샘플 데이터를 이용한 디코딩 테스트용 클래스
final class ForecastServiceStub : ForecastServiceable {
  func fetchWeatherForecast(
    endpoint: Endpoint,
    completionHandler: @escaping (Result<Weather, ServiceError>) -> Void
  ){
    let data = SampleData.currentWeather
    do {
      let weather = try JSONDecoder().decode(Weather.self, from: data)
      completionHandler(.success(weather))
    } catch {
      completionHandler(.failure(.decodingError(error)))
    }
  }
}
