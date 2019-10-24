//
//  WeatherView.swift
//  breezy
//
//  Created by Elijah Cobb on 10/23/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
	
	var weather: WeatherReport
	
	var body: some View {
		
		VStack {
			Text(String(format: "%.0f℉", weather.currently.temperature))
				.font(.largeTitle)
			Text(weather.daily.summary)
				.font(.headline)
				.padding()
				.multilineTextAlignment(.center)
		}
		
	}
	
}

/**
DONT CHANGE ANY OF THE BELOW...

This is just for you to preview. It will not actually change anything because the stuff that sets this is in a different file.
*/
struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			WeatherView(weather: WeatherReport.getDummyData())
				.navigationBarTitle("breezy")
		}.colorScheme(.dark)
    }
}
