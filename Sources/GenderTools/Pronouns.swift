//
//  Pronouns.swift
//  
//
//  Created by Ky Leggiero on 2022-02-16.
//  CC-0 License
//

import Foundation



/// Represents a full set of English pronoun conjugationss, for use in text about someone. Intended for use as singular 3rd-person pronouns, but can be used for any plurality & perspective
public enum Pronouns {

    /// The typical set of 5 conjugations of pronouns used in English, such as `they/them/their/theirs/themself`
    ///
    /// - Parameters:
    ///   - subjective: The subjective form of these pronouns, like `they`. For example:  "_ loves cake"
    ///   - objective: The objective form of these pronouns, like `them`. For example:  "Morgan will give _ some"
    ///   - possessiveDeterminer: The possessive determiner form of these pronouns, like `their`. For example:  "That's _ favorite"
    ///   - possessive: The possessive form of these pronouns, like `theirs`. For example:  "That spot is _"
    ///   - reflexive: The reflexive form of these pronouns, like `themself`. For example:  "More cake all to _"
    case englishConjugated(
        subjective: String,
        objective: String,
        possessiveDeterminer: String,
        possessive: String,
        reflexive: String)
    
    /// Any pronouns (user has no preference)
    case any
}



public extension Pronouns {
    init(subjective: String,
         objective: String,
         possessiveDeterminer: String,
         possessive: String,
         reflexive: String) {
        self = .englishConjugated(
            subjective: subjective,
            objective: objective,
            possessiveDeterminer: possessiveDeterminer,
            possessive: possessive,
            reflexive: reflexive)
    }
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



extension Pronouns: CaseIterable {
    
    /// All common pronoun sets and many uncommon ones. `.any` is excluded from this list.
    public static var allCases: [Pronouns] = [
        theyThem,
        sheHer,
        heHim,
        itIts,
        faeFaer,
        eyEm,
        eEm,
        sieHir,
        xeXem,
    ]
    
    /// A randomly-chosen set of pronouns. This is different every time you call it
    static var random: Pronouns { allCases.randomElement() ?? .theyThem }
}



// MARK: - Conveniences

public extension Pronouns {
    var englishConjugations: EnglishConjugations {
        switch self {
        case .englishConjugated(let subjective, let objective, let possessiveDeterminer, let possessive, let reflexive):
            return EnglishConjugations(
                subjective: subjective,
                objective: objective,
                possessiveDeterminer: possessiveDeterminer,
                possessive: possessive,
                reflexive: reflexive
            )
            
        case .any:
            return Self.random.englishConjugations
        }
    }
    
    
    
    typealias EnglishConjugations = (
        subjective: String,
        objective: String,
        possessiveDeterminer: String,
        possessive: String,
        reflexive: String
    )
}

extension Pronouns: CustomStringConvertible {
    
    public var description: String {
        let conjugations = self.englishConjugations
        let first = conjugations.subjective
        let second =
        conjugations.objective != first
            ? conjugations.objective
            : conjugations.possessiveDeterminer != first
                ? conjugations.possessiveDeterminer
                : conjugations.possessive != first
                    ? conjugations.possessive
                    : conjugations.reflexive != first
                        ? conjugations.reflexive
                        : first
        
        return "\(first)/\(second)"
    }
}



// MARK: - `Hashable`

extension Pronouns: Hashable {}



// MARK: - `Codable`

extension Pronouns: Codable {}
