//
//  MaterialAddorEdit.swift
//  DreamTing
//
//  Created by Mikael Teklehaimanot on 9/18/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class MaterialAddorEdit: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var titleTxtFld: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
    
    /*
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //print("This is the height: \(titleTxtFld.frame.size.height)")
    }
    */
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        
        //error silencer
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        //error silencer
        return 0
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        //error silencer
        return String()
    }
    
    
}
