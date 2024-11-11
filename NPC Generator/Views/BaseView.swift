//
//  LandingPageView.swift
//  NPC Generator
//
//  Created by Ed Salter on 11/10/24.
//

import SwiftUI

struct BaseView: View {
	@Environment(\.managedObjectContext) private var viewContext

	@FetchRequest(
		sortDescriptors: [NSSortDescriptor(keyPath: \NPC.createdAt, ascending: true)],
		animation: .default)
	private var items: FetchedResults<NPC>
	
    var body: some View {
        TabView {
            NavigationStack {
                VStack(spacing: 20) {
                    Text("NPC Generator")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Create unique characters for your tabletop RPG adventures")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                        .padding(.horizontal)
                }
            }
            .tabItem {
                Label("Home", systemImage: "house.fill")
            }
            
            Text("Character Creator")
                .tabItem {
                    Label("Create", systemImage: "person.fill.badge.plus")
                }
            
            Text("Characters")
                .tabItem {
                    Label("Characters", systemImage: "person.2.fill")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .tint(.blue)
    }
}

#Preview {
	BaseView()
}
