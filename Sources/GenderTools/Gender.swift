//
//  Gender.swift
//  
//
//  Created by Ky Leggiero on 2022-02-16.
//  CC-0 License
//

import Foundation



/// A person's gender
public struct Gender {
    
    /// The user-readable name of this gender
    public let genderName: String
    
    /// The pronouns associated with this gender, so you may refer to the user properly
    public let pronouns: [Pronouns]
}



public extension Gender {
    init(genderName: String, pronouns: Pronouns? = nil) {
        self.init(genderName: genderName, pronouns: pronouns.map { [$0] } ?? [])
    }
}



// MARK: - Default instances

public extension Gender {
    
    /// The most common feminine gender: Woman
    static let woman = Gender(genderName: "Woman", pronouns: .sheHer)
    
    /// The most common masculine gender: Man
    static let man = Gender(genderName: "Man", pronouns: .heHim)
    
    
    /// Both an umbrella term for any gender which isn't strictly masculine nor feminine, and also (to some) its own gender
    static let nonBinary = Gender(genderName: "Non-Binary", pronouns: .theyThem)
    
    /// Both an umbrella term for a lack of gender, and also (to some) its own gender
    static let agender = Gender(genderName: "Agender", pronouns: .theyThem)
    
    /// A gender which is a flux of feminine genders
    static let genderfae = Gender(genderName: "Genderfae", pronouns: .faeFaer)
    
    /// A gender which is a flux of masculine genders
    static let genderfaun = Gender(genderName: "Genderfaun", pronouns: .heHim)
}



// MARK: - Conformances

extension Gender: Hashable {}
