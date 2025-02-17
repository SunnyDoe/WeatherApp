//
//  BackgroundView.swift
//  WeatherApp
//
//  Created by Sandro Tsitskishvili on 17.02.25.
//

import SwiftUI


struct BackgroundView: View {
    
    @Binding var isNight: Bool

    
    var body: some View {
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea(.all)
    }
}
