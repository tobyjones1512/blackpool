//
//  Item.swift
//  blackpool
//
//  Created by Toby Jones on 31/07/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var favourites: [String]
    
    init(favourites: [String] = []) {
        self.favourites = favourites
    }
}

public struct Company {
    let name: String
    let description: String
    let shortDesc: String
    let email: String
    let website: String
    let logo: String
}

public let businessList: [Company] = [
    Company(
        name: "Toby Jones",
        description: "As a verified Apple Developer, I've built apps that you can find on the App Store (find out more). When I'm not coding, I leverage my web development and digital marketing expertise to bring online visions to life. But creativity isn't limited to the digital world - I'm also a filmmaker, skilled in all aspects of production from writing and directing to shooting and editing.",
        shortDesc: "Digital Marketing / Services",
        email: "contact@tobyjones.info",
        website: "business/tobyjones",
        logo: "TobyJones"
    ),
    
    Company(
        name: "Anna’s Cleaning Co.",
        description: "Reliable Commercial & Domestic cleaning team covering the North Shore Area.",
        shortDesc: "Cleaning Company",
        email: "anna@gmail.com",
        website: "business/annacleaning",
        logo: "AnnaCleaningCo"
    )
]
