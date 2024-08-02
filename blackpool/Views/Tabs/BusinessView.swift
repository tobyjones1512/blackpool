//
//  BusinessView.swift
//  blackpool
//
//  Created by Toby Jones on 01/08/2024.
//

import SwiftUI
import SwiftData

struct BusinessView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    @State private var searchText: String = ""
    
    var body: some View {
        Text("💼 Business")
            .font(.title)
            .padding(.bottom)
        
        TextField("Search", text: $searchText)
            .textFieldStyle(.roundedBorder)
            .padding()
        
        List(businessList, id: \.logo) { company in
            if searchText.isEmpty || company.name.contains(searchText) {
                CompanyButton(logo: company.logo, name: company.name, description: company.shortDesc)
            }
        }
    }
}

#Preview {
    BusinessView()
}
