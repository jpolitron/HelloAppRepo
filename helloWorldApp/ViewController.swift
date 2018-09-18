//
//  ViewController.swift
//  helloWorldApp
//
//  Created by Jessie Politron on 9/15/18.
//  Copyright © 2018 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBAction func didTapButton(_ sender: Any) {
        print("Hello! 😃")
        textLabel.textColor = UIColor.black
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        //textLabel.text = "GoodBye! 😎"
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello"
        view.backgroundColor = backgroundColor
    }
    
}

