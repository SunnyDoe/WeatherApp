//
//  Weather&CityView.swift
//  WeatherApp
//
//  Created by Sandro Tsitskishvili on 17.02.25.
//

import SwiftUI

struct MainWeatherView: View {
    var image: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .foregroundStyle(.white)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°C")
                .font(.system(size: 42, weight: .bold, design: .default))
                .foregroundStyle(.white)
        }
    }
}

struct CityView: View {
    var city: String
    
    var body: some View {
        Text(city)
            .font(.system(size: 32, weight: .bold, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct WeatherButton: View {
    var title: String
    var backGroundColor: Color
    var textColor : Color
    
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(backGroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
