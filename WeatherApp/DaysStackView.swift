//
//  DaysStackView.swift
//  WeatherApp
//
//  Created by Sandro Tsitskishvili on 17.02.25.
//

import SwiftUI

struct ExtractedView: View {
    
    var day: String
    var image:String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(day)
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .foregroundStyle(.white)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
