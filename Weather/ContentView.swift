//
//  ContentView.swift
//  Weather
//
//  Created by Timothy Hart on 6/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var vm = ViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal){
                HStack {
                    ForEach(vm.dailyForecasts) { forecast in
                        DayForecast(day: forecast.day, isRainy: forecast.isRainy, high: forecast.high, low: forecast.low)
                    }
                }
            }
            Button("Add Saturday") {
                vm.addSaturday()
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            Button("Remove Last") {
                vm.removeSaturday()
            }
        }
    }
}

#Preview {
    ContentView()
}
