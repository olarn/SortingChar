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
    func displaySortedResult(_ result: String)
    func displayEmptyDisplay()
}

class SortPresenter {

    var viewController: SortPresenterProtocol!

    init(viewController: SortPresenterProtocol) {
        self.viewController = viewController
    }

    func sort(_ input: String) {
        if input.isEmpty {
            self.viewController.displayEmptyDisplay()
            return
        }
        let sorter = Sorter()
        let result = sorter.sort(input)
        self.viewController.displaySortedResult(result)
    }
}
