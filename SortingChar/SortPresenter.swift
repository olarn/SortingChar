//
//  SortPresenter.swift
//  SortingChar
//
//  Created by Olarn U. on 7/30/2559 BE.
//  Copyright © 2559 Olarn U. All rights reserved.
//

import Foundation
import UIKit

protocol SortPresenterProtocol {
    func displaySortedResult(result: String)
}

class SortPresenter {
    
    var vc: SortPresenterProtocol!
    
    init(vc: SortPresenterProtocol) {
        self.vc = vc
    }
    
    func sort(input: String) {
        if input.isEmpty {
            return
        }
        let sorter = Sorter()
        let result = sorter.sort(input)
        vc.displaySortedResult(result)
    }
}

