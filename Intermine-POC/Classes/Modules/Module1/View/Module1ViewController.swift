//
//  Module1ViewController.swift
//  Intermine-POC
//
//  Created by Aditya Jain on 02/04/17.
//  Copyright © 2017 Aditya Jain. All rights reserved.
//

import UIKit

class Module1ViewController: UIViewController,Module1Input {

    var output: Module1Output!
    var textField : UITextField!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    func setupInitialState() {
        let screenSize: CGRect = UIScreen.main.bounds
        self.textField = UITextField(frame: CGRect(x: 0, y: 0, width: screenSize.width - 10, height:10))
        self.view.addSubview(self.textField)
    }
    
    // MARK: Module1Input
    func getDataWithResultBlock(resultBlock: DataResultBlock) {
        resultBlock(textField.text!)
    }
    
    func setTextInEditField(text: String) {
        textField.text = text
    }
    
}
