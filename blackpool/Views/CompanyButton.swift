//
//  CompanyButton.swift
//  blackpool
//
//  Created by Toby Jones on 01/08/2024.
//

import SwiftUI

struct CompanyButton: View {
    
    @State var logo: String
    @State var name: String
    @State var description: String
    
    var body: some View {
        HStack {
            Image(logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75)
//                .brightness(1)
                .shadow(radius: 5)
                .padding(.trailing)
            
            VStack (alignment: .leading) {
                Text(name)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                
                Text(description)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
        }
        .padding()
//        .padding()
//        .padding(.horizontal)
//        .background(.gray)
//        .clipShape(RoundedRectangle(cornerRadius: 15))
//        .padding(.horizontal)
//        .padding(.horizontal)
    }
}
