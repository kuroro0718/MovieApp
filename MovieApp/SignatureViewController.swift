//
//  SignatureViewController.swift
//  MovieApp
//
//  Created by ycliang on 2016/9/2.
//  Copyright © 2016年 Alex Liang. All rights reserved.
//

import UIKit

class SignatureViewController: UIViewController {
  
    @IBOutlet weak var errorMessageLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    var textParagraph: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signatureButtonPressed(sender: AnyObject) {
        if inputTextField.text == "" {
            errorMessageLabel.text = "名字不能留白"
            return
        }
        
        if textParagraph.count < 3 {
            textParagraph.append(inputTextField.text!)
        } else {
            errorMessageLabel.text = "只能簽三筆"
            return
        }
        
        var signature = ""
        for text in textParagraph {
            signature += "\(text)\n"
        }
        textLabel.text = signature
        
        inputTextField.text = ""
    }
}
