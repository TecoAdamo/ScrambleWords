//
//  ContentView.swift
//  scrambleApp
//
//  Created by Mateus on 13/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
			GeometryReader(content: { proxy in
				ZStack {
					Color.background
						.ignoresSafeArea()
					VStack {
						VStack {
									Image("orange")
								.resizable()
								.frame(width: 100, height:  100)
							}
						.frame(width: proxy.size.width * 0.9, height: proxy.size.width * 0.9)
						.overlay{
							RoundedRectangle(cornerRadius: 8)
								.stroke(Color.border, lineWidth: 1)
					}
						Text("Score: 0")
							.font(.title3)
							.foregroundStyle(.white)
							.padding(.top)
						HStack{
							LetterView(charatcer: "O")
							LetterView(charatcer: "A")
						}
					}
					
				}
			})
    }
}

#Preview {
    ContentView()
}

struct LetterView: View {
	let charatcer: String
	var body: some View {
		Text(charatcer)
			.font(.system(size: 16, weight: .semibold))
			.foregroundStyle(.white)
			.frame(width: 30, height: 30)
			.background(.border)
			.clipShape(RoundedRectangle(cornerRadius: 6))
	}
}
