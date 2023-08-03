//
//  CountriesModel.swift
//  GuessTheFlag-HackingSwift
//
//  Created by Mert Deniz Akbaş on 1.08.2023.
//

import Foundation

enum CountriesModel: String, CaseIterable {
    case estonia = "estonia"
    case france = "france"
    case germany = "germany"
    case ireland = "ireland"
    case italy = "italy"
    case monaco = "monaco"
    case nigeria = "nigeria"
    case poland = "poland"
    case russia = "russia"
    case spain = "spain"
    case uk = "uk"
    case us = "us"
    
    static var get: String {
            return allCases.randomElement()!.rawValue
        }

//    static func getRandomCountry() -> CountriesModel {
//        // Tüm ülkeleri içeren bir liste oluşturuyoruz.
//        let allCountries = Array(CountriesModel.allCases)
//        
//        // Rastgele bir ülke seçmek için UInt32 tipinde bir rastgele sayı oluşturuyoruz.
//        let randomIndex = arc4random_uniform(UInt32(allCountries.count))
//        
//        // Rastgele seçilen ülkeyi döndürüyoruz.
//        return allCountries[Int(randomIndex)]
//    }
}


