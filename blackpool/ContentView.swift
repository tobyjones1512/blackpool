//
//  ContentView.swift
//  blackpool
//
//  Created by Toby Jones on 31/07/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    let categories = [
        "🏠 Home", "☕️ Cafés", "🍽️ Restaurants", "💼 Business", "🎫 Events", "🎤 Musicians"
    ]
    
    @State private var selectedCategory = "🏠 Home"

    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach (categories, id: \.hashValue) { category in
                    Button(category, action: {
                        selectedCategory = category
                    })
                    .padding()
                    .padding(.horizontal)
                    .background(.regularMaterial)
                    .opacity(selectedCategory == category ? 0.5 : 1)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                    .padding(.horizontal)
                }
            }
        }
        .padding(.vertical)
        
        switch (selectedCategory) {
            case "💼 Business":
                BusinessView()
                    .modelContext(modelContext)
            case "☕️ Cafés":
                HomeView()
                    .modelContext(modelContext)
            default:
                HomeView()
                    .modelContext(modelContext)
        }
        
        Spacer()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
