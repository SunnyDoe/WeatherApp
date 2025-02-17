//
//  ContentView.swift
//  WeatherApp
//
//  Created by Sandro Tsitskishvili on 17.02.25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityView(city: "Tbilisi, GE")
                VStack{
                    MainWeatherView(image: "cloud.rain", temperature: 25)
                }
                
                Spacer()
                
                HStack(spacing: 20) {
                    ExtractedView(day: "Mon", image: "sun.max", temperature: 13)
                    ExtractedView(day: "Tue", image: "cloud.drizzle", temperature: 4)
                    ExtractedView(day: "Wed", image: "wind", temperature: -10)
                    ExtractedView(day: "Thu", image: "cloud.fog", temperature: 11)
                    ExtractedView(day: "Fri", image: "cloud.hail", temperature: 0)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", backGroundColor: .mint, textColor: .blue)
                    
                }
                Spacer()
            }
        }
    }
}

