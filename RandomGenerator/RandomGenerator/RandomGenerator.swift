//
//  RandomGenerator.swift
//  RandomGenerator
//
//  Created by Alan Soares on 23/08/21.
//

import Foundation
import Alamofire

public class RandonGenerator {
    private init() {}
    
    public static func randomString() -> String {
        return UUID().uuidString
    }
    
    public static func randomInterger() -> Int {
        return Int(arc4random())
    }
    
    public static func fetchFilms() {
        // 1
        let request = AF.request("https://swapi.dev/api/films")
        // 2
        request.responseJSON { (data) in
            print(data)
        }
    }
}
