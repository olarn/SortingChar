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
    func displayEnptyDisplay()
}

class SortPresenter {

    var viewController: SortPresenterProtocol!

    init(viewController: SortPresenterProtocol) {
        self.viewController = viewController
    }

    func sort(input: String) {
        if input.isEmpty {
            viewController.displayEnptyDisplay()
            return
        }
        let sorter = Sorter()
        let result = sorter.sort(input)
        viewController.displaySortedResult(result)
    }
}
