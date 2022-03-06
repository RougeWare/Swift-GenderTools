//
//  Pronouns.swift
//  
//
//  Created by Ky Leggiero on 2/16/22.
//

import Foundation



/// Represents a full set of English pronoun conjugationss, for use in text about someone. Intended for use as singular 3rd-person pronouns, but can be used for any plurality & perspective
public struct Pronouns {
    
    /// The subjective form of these pronouns, like `they`. For example:  "_ loves cake"
    public let subjective: String
    
    /// The objective form of these pronouns, like `them`. For example:  "Morgan will give _ some"
    public let objective: String
    
    /// The possessive determiner form of these pronouns, like `their`. For example:  "That's _ favorite"
    public let possessiveDeterminer: String
    
    /// The possessive form of these pronouns, like `theirs`. For example:  "That spot is _"
    public let possessive: String
    
    /// The reflexive form of these pronouns, like `themself`. For example:  "More cake all to _"
    public let reflexive: String
}



// MARK: - Default instances

public extension Pronouns {
    static let theyThem = Self(subjective: "they", objective: "them", possessiveDeterminer: "their", possessive: "theirs", reflexive: "themself")
    static let sheHer = Self(subjective: "she", objective: "her", possessiveDeterminer: "her", possessive: "hers", reflexive: "herself")
    static let heHim = Self(subjective: "he", objective: "him", possessiveDeterminer: "his", possessive: "his", reflexive: "himself")
    
    static let itIts = Self(subjective: "it", objective: "it", possessiveDeterminer: "its", possessive: "its", reflexive: "itself")
    
    static let faeFaer = Self(subjective: "fae", objective: "faer", possessiveDeterminer: "faer", possessive: "faers", reflexive: "faerself")
    static let eyEm = Self(subjective: "ey", objective: "em", possessiveDeterminer: "eir", possessive: "eirs", reflexive: "emself")
    static let eEm = Self(subjective: "e", objective: "em", possessiveDeterminer: "er", possessive: "ers", reflexive: "emself")

    static let sieHir = Self(subjective: "sie", objective: "hir", possessiveDeterminer: "hir", possessive: "hirs", reflexive: "hirself")
    static let xeXem = Self(subjective: "xe", objective: "xem", possessiveDeterminer: "xyr", possessive: "xyrs", reflexive: "xemself")
}



// MARK: - Conveniences

extension Pronouns: CustomStringConvertible {
    
    public var description: String {
        let first = subjective
        let second =
            objective != first ? objective :
            possessiveDeterminer != first ? possessiveDeterminer :
            possessive != first ? possessive :
            reflexive != first ? reflexive :
            first
        
        return "\(first)/\(second)"
    }
}
