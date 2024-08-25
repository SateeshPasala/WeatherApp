//
//  WeatherResponse.swift
//  WeatherApp
//
//  Created by Sateesh on 24/08/24.
//

import Foundation

struct WeatherResponse: Codable {
    var current: Weather
    var hourly: [Weather]
    var daily: [WeatherDaily]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(
            current: Weather(),
            hourly: [Weather](repeating: Weather(), count: 24),
            daily: [WeatherDaily](repeating: WeatherDaily(), count: 8)
        )
    }
}
