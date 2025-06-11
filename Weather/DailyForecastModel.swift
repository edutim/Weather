//
//  DailyForecastModel.swift
//  Weather
//
//  Created by Timothy Hart on 6/10/25.
//

import Foundation

struct DailyForecastModel: Identifiable {
    let id = UUID()
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
}
