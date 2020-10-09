//
//  load.swift
//  Drinks
//
//  Created by ر on 13/02/1442 AH.
//  Copyright © 1442 r. All rights reserved.
//

import Foundation

let drinkdata:[drinkss] = load("drinks.json")
func load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T{
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{fatalError("couldnot find\(filename) in bundle.")}
    do {
        data = try Data(contentsOf: file)
    }catch{
        fatalError("ouldnot load\(filename) from bundle")
    }
    do{
    let decoder =  JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("ouldnot parse\(filename) as \(T.self):\n\(error)")
    }
}
