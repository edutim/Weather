//
//  DayForecast.swift
//  Weather
//
//  Created by Timothy Hart on 6/10/25.
//

import SwiftUI

/// This is to display a single day forecast.
struct DayForecast: View {
    
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return .blue
        } else {
            return .yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(.largeTitle)
                //.padding(5)
            Text("High: \(high)")
                .fontWeight(.bold)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}


#Preview {
    DayForecast(day: "Mon", isRainy: true, high: 80, low: 54)
}
