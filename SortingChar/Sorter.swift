//
//  Sorter.swift
//  SortingChar
//
//  Created by Olarn U. on 7/30/2559 BE.
//  Copyright © 2559 Olarn U. All rights reserved.
//

import Foundation

struct Sorter {

    func sort(_ input: String) -> String {
        let lowerCaseInput = input.lowercased()
        let replacedInput = lowerCaseInput.replacingOccurrences(of: " ", with: "")
        let sortedString = String(Array(replacedInput.characters).sorted())
        return sortedString
    }

}
