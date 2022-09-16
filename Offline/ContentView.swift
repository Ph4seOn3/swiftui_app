//  ContentView.swift

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack(alignment: .leading, spacing: 8.0) {
			Spacer()
			Image("Logo 2")
				.resizable(resizingMode: . stretch)
				.aspectRatio(contentMode: .fit)
				.frame(width: 26.0, height: 26.0)
				.cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
				.padding(9)
				.background(.ultraThinMaterial, in:
					RoundedRectangle(cornerRadius: 20, style: .continuous))
			Text("Homepage")
				.font(.largeTitle)
				.fontWeight(.bold)
				.foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
			Text("Subheading".uppercased())
				.font(.footnote)
				.fontWeight(.semibold)
				.foregroundStyle(.secondary)
			Text("paragraph text would be here and this would be the smallest of the three")
				.font(.footnote)
				.multilineTextAlignment(.leading)
				.lineLimit(2)
				.frame(maxWidth: .infinity, alignment: .leading)
				.foregroundColor(.secondary)
			
		}
		.padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
		.padding(.vertical, 20)
		.frame(height: 350.0)
		.background(.ultraThinMaterial, in:
			RoundedRectangle(cornerRadius: 30, style: .continuous))
		.shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y:10)
		.modifier(StrokeStyle())
		.padding(.horizontal, 20)
		.background(Image("Blob 1")
			.offset(x: 250, y:-100)
		)
		.overlay(
			Image("Illustration 5")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(height: 230)
				.offset(x:32, y: -80)
		)
	}
}


//Content Preview Allows for multiple Instances of Canvas
struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
			ContentView()
	}
}

