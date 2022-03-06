//
//  Gender.swift
//  
//
//  Created by Ky Leggiero on 2/16/22.
//

import Foundation



public struct Gender {
    let genderName: String
    let pronouns: Pronouns
}



// MARK: - Default instances

public extension Gender {
    static let woman = Gender(genderName: "Woman", pronouns: .sheHer)
    static let man = Gender(genderName: "Man", pronouns: .heHim)
    
    static let nonBinary = Gender(genderName: "Non-Binary", pronouns: .theyThem)
    static let agender = Gender(genderName: "Agender", pronouns: .theyThem)
    static let genderfae = Gender(genderName: "Genderfae", pronouns: .faeFaer)
}
