//
//  ContentView.swift
//  breezy
//
//  Created by Elijah Cobb on 10/22/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var darkSky: DarkSky
	
	init() {
		darkSky = DarkSky()
		darkSky.beginFetch()
	}
    
	var body: some View {
		NavigationView {
			getValue()
				.navigationBarTitle("breezy")
		}
    }
	
	func getValue() -> AnyView {
		return darkSky.report == nil ? AnyView(LoadingView()) : AnyView(WeatherView(weather: darkSky.report!))
	}
	
}

struct LoadingView: View {
	
	var body: some View {
		VStack {
			ActivityIndicator()
			Text("Loading")
		}
	}
	
}

struct ActivityIndicator: UIViewRepresentable {

	let style: UIActivityIndicatorView.Style = .medium

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
		let loader = UIActivityIndicatorView(style: style)
		loader.startAnimating()
		return loader
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView().colorScheme(.dark)
    }
}
