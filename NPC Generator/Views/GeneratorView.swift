//
//  GeneratorView.swift
//  NPC Generator
//
//  Created by Ed Salter on 11/10/24.
//

import SwiftUI

struct GeneratorView: View {
	@State private var npcDescription: String = ""
	
	let examplePrompts = [
		"A grizzled dwarf blacksmith with a secret past",
		"An elven ranger seeking redemption",
		"A jovial halfling innkeeper who knows all the town's gossip",
		"A mysterious sorcerer with untapped powers"
	]
	
	var body: some View {
		VStack(alignment: .leading, spacing: 20) {
			Text("Describe Your NPC")
				.font(.title)
				.bold()
			
			TextEditor(text: $npcDescription)
				.frame(height: 150)
				.padding(8)
				.overlay(
					RoundedRectangle(cornerRadius: 8)
						.stroke(Color.gray.opacity(0.5))
				)
			
			Text("Example Prompts:")
				.font(.headline)
			
			ForEach(examplePrompts, id: \.self) { prompt in
				Button(action: {
					npcDescription = prompt
				}) {
					Text(prompt)
						.foregroundColor(.blue)
				}
			}
			
			Spacer()
			
			Button(action: {
				// Action to generate NPC
			}) {
				Text("Generate NPC")
					.frame(maxWidth: .infinity)
					.padding()
					.background(Color.blue)
					.foregroundColor(.white)
					.cornerRadius(8)
			}
		}
		.padding()
		.navigationTitle("NPC Generator")
	}
}

#Preview {
	NavigationStack {
		GeneratorView()
	}
}
