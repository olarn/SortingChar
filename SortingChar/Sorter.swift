//
//  Sorter.swift
//  SortingChar
//
//  Created by Olarn U. on 7/30/2559 BE.
//  Copyright © 2559 Olarn U. All rights reserved.
//

import Foundation

struct Sorter {
    
    func sort(input: String) -> String {
        let lowerCasedInput = input.lowercaseString
        let replaceWhiteSpaceInput = lowerCasedInput.stringByReplacingOccurrencesOfString(" ", withString: "")
        return String(Array(replaceWhiteSpaceInput.characters).sort())
    }
    
}