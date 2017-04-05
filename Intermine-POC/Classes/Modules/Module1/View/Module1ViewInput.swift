//
//  Module1Input.swift
//  Intermine-POC
//
//  Created by Aditya Jain on 02/04/17.
//  Copyright © 2017 Aditya Jain. All rights reserved.
//

typealias DataResultBlock = (_ data: String) -> Void

protocol Module1ViewInput: class {
    func getDataWithResultBlock(resultBlock: DataResultBlock)
    func setupInitialState()
    func setTextInEditField(text: String)
}
