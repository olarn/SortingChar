//
//  ViewController.swift
//  SortingChar
//
//  Created by Olarn U. on 7/30/2559 BE.
//  Copyright © 2559 Olarn U. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtInputField: UITextField!
    @IBOutlet var lblResult: UILabel!

    // Dependencies #1
    var sorter: Sorter!
    var sortPresenter: SortPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Dependencies #2
        self.sorter = Sorter()
        self.sortPresenter = SortPresenter(viewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSortTapped(sender: AnyObject) {
        let stringToSort = self.txtInputField.text!
        self.sortPresenter.sort(stringToSort)
    }
}

extension ViewController: SortPresenterProtocol {

    func displaySortedResult(sortedString: String) {
        self.lblResult.text = sortedString
    }

    func displayEmptyDisplay() {
        self.lblResult.text = "Please enter text before call sort."
    }
}
