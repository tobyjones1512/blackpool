//
//  HomeView.swift
//  blackpool
//
//  Created by Toby Jones on 31/07/2024.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        Text("🏠 Home")
            .font(.title)
            .padding(.bottom)
        
        Spacer()
        
        ScrollView (.vertical) {
//            Link(destination: URL(string: "https://apps.apple.com/gb/app/blackpool-eats/id1503718554")!, label: {
//                CompanyButton(logo: "BlackpoolEats")
//            })
//            .padding(.vertical)
//            
//            Link(destination: URL(string: "https://apps.apple.com/gb/app/bpl-transport/id1216146694")!, label: {
//                CompanyButton(logo: "BlackpoolTransport")
//            })
//            .padding(.vertical)
//            
//            Link(destination: URL(string: "https://apps.apple.com/gb/app/coastal-radio/id1666827335")!, label: {
//                CompanyButton(logo: "CoastalRadio")
//            })
//            .padding(.vertical)
        }
        
        Spacer()
        
        Button("Add My Business", action: {
            
        })
        .padding(.bottom)
    }
}

#Preview {
    HomeView()
}
