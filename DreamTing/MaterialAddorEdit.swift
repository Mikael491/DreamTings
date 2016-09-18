//
//  MaterialAddorEdit.swift
//  DreamTing
//
//  Created by Mikael Teklehaimanot on 9/18/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit

class MaterialAddorEdit: UIViewController {
    
    @IBOutlet weak var titleTxtFld: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //print("This is the height: \(titleTxtFld.frame.size.height)")
    }
    
}
