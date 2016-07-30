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

    let sorter = Sorter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSortTapped(sender: AnyObject) {
        let sortPresenter = SortPresenter(vc: self)
        let stringToSort = self.txtInputField.text!
        sortPresenter.sort(stringToSort)
    }
    
}

extension ViewController: SortPresenterProtocol {

    func displaySortedResult(sortedString: String) {
        lblResult.text = sortedString
    }

    func displayEnptyDisplay() {
        lblResult.text = "Please enter text before call sort."
    }
}

