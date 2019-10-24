//
//  Structures.swift
//  breezy
//
//  Created by Elijah Cobb on 10/22/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import Foundation

struct WeatherReport : Codable {
	
	let latitude: Double
	let longitude: Double
	let timezone: String
	let currently: WeatherReportCurrent
	let hourly: WeatherReportSection<WeatherReportHourlyItem>
	let daily: WeatherReportSection<WeatherReportDailyItem>
	let offset: Int
	
	static func getDummyData() -> WeatherReport {
		WeatherReport.init(
			latitude: 0,
			longitude: 0,
			timezone: "America/New_York",
			currently: WeatherReportCurrent(
				time: 0,
				summary: "Sunny with a chance of meatballs.",
				icon: "clear-day",
				nearestStormDistance: 100,
				precipIntensity: 2.4,
				precipIntensityError: nil,
				precipProbability: 0.99,
				precipType: "sunny",
				temperature: 93,
				apparentTemperature: 39,
				dewPoint: 60.77,
				humidity: 0.83,
				pressure: 1010.34,
				windSpeed: 5.59,
				windGust: 12.03,
				windBearing: 247,
				cloudCover: 0.84,
				uvIndex: 3,
				visibility: 9.83,
				ozone: 267.44
			),
			hourly: WeatherReportSection<WeatherReportHourlyItem>(
				summary: "Rain starting later this afternoon, continuing until this evening.",
				icon: "thunderstorm",
				data: [
					// add some here...
				]
			),
			daily: WeatherReportSection<WeatherReportDailyItem>(
				summary: "It's going to be a beautiful weekend making a good day for the park.",
				icon: "thunderstorm",
				data: [
					// add some here...
				]
			),
			offset: 0
		)
	}
	
}

struct WeatherReportSection<T : Codable> : Codable {
	let summary: String
	let icon: String
	let data: [T]
}

struct WeatherReportHourlyItem : Codable {
	
	let time: Int
	let summary: String
	let icon: String
	
	let precipIntensity: Double
	let precipProbability: Double
	
	let temperature: Double
	let apparentTemperature: Double
	
	let dewPoint: Double
	let humidity: Double
	let pressure: Double
	
	let windSpeed: Double
	let windGust: Double
	let windBearing: Double
	
	let cloudCover: Double
	let uvIndex: Int
	let visibility: Double
	let ozone: Double
	
}

struct WeatherReportDailyItem : Codable {
	
	let time: Int
	let summary: String
	let icon: String

	let sunriseTime: Int
	let sunsetTime: Int

	let moonPhase: Double

	let precipIntensity: Double
	let precipIntensityMax: Double
	let precipIntensityMaxTime: Int
	let precipProbability: Double
	let precipType: String
	
	let temperatureHigh: Double
	let temperatureHighTime: Int
	let temperatureLow: Double
	let temperatureLowTime: Int

	let apparentTemperatureHigh: Double
	let apparentTemperatureHighTime: Int
	let apparentTemperatureLow: Double
	let apparentTemperatureLowTime: Int

	let dewPoint: Double
	let humidity: Double
	let pressure: Double
	let windSpeed: Double
	let windGust: Double
	let windGustTime: Int
	let windBearing: Double
	let cloudCover: Double
	let uvIndex: Int
	let uvIndexTime: Int
	let visibility: Double
	let ozone: Double
	
}

struct WeatherReportCurrent : Codable {
	
	let time: Int
	let summary: String
	let icon: String
	
	let nearestStormDistance: Double
	let precipIntensity: Double
	let precipIntensityError: Double?
	let precipProbability: Double
	let precipType: String?
	let temperature: Double
	let apparentTemperature: Double
	let dewPoint: Double
	let humidity: Double
	let pressure: Double
	let windSpeed: Double
	let windGust: Double
	let windBearing: Double
	let cloudCover: Double
	let uvIndex: Int
	let visibility: Double
	let ozone: Double
}
