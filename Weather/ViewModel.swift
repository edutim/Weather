//
//  ViewModel.swift
//  Weather
//
//  Created by Timothy Hart on 6/10/25.
//

import Foundation

@Observable
class ViewModel {
    var dailyForecasts: [DailyForecastModel] = [
        .init(day: "Mon", isRainy: true, high: 75, low: 60),
        .init(day: "Tue", isRainy: false, high: 60, low: 55),
        .init(day: "Wed", isRainy: true, high: 50, low: 45),
        .init(day: "Thu", isRainy: true, high: 40, low: 35),
        .init(day: "Fri", isRainy: true, high: 30, low: 25)
    ]
    
    func addSaturday() {
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"            // e.g. "Mon", "Tue", …
        let shortWeekday = formatter.string(from: now)
        dailyForecasts.append(.init(day: shortWeekday, isRainy: false, high: 80, low: 70))
    }
    
    func removeSaturday() {
        dailyForecasts.removeLast()
    }
    
}
