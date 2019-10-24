//
//  Networking.swift
//  breezy
//
//  Created by Elijah Cobb on 10/22/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import Foundation

class DarkSky : ObservableObject {
	
	@Published var report: WeatherReport?
	
	func beginFetch() {
		
		self.fetch()
		
		Timer.scheduledTimer(withTimeInterval: 60*5, repeats: true) { timer in
			
			DispatchQueue.global(qos: .background).async {
				
				self.fetch()
				
			}
			
		}
		
	}
	
	func fetch() {
				
		let session: URLSession = URLSession.shared
		let url: URL = URL(string: "https://api.darksky.net/forecast/c556b3adfbc4a56daae61f5bb105c55d/47.119360,-88.549604?exclude=[minutely,flags]")!
		
		let task = session.dataTask(with: url) { (d: Data?, u: URLResponse?, e: Error?) in
			
			let decoder = JSONDecoder()
			guard let data = d else { return }
			
			var r: WeatherReport?
			
			do {
				
				r = try decoder.decode(WeatherReport.self, from: data)
				
			} catch {
			
				print(error)
				
			}
			
			DispatchQueue.main.async { self.report = r }
			
		}
		
		task.resume()
		
	}
}
