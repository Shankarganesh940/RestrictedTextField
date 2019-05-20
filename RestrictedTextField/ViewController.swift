//
//  ViewController.swift
//  RestrictedTextField
//
//  Created by Greeens5 on 19/05/19.
//  Copyright © 2019 Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textfield: UITextField!
    
    
    let textfield_limit = 5
func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
{
    return(textfield.text?.utf16.count ?? 0) + string.utf16.count - range.length <= textfield_limit
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

