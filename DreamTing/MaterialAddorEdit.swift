//
//  MaterialAddorEdit.swift
//  DreamTing
//
//  Created by Mikael Teklehaimanot on 9/18/16.
//  Copyright © 2016 Mikael Teklehaimanot. All rights reserved.
//

import UIKit
import CoreData

class MaterialAddorEdit: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var titleTxtFld: UITextField!
    @IBOutlet weak var priceTxtFld: UITextField!
    @IBOutlet weak var detailsTxtFld: UITextField!
    
    var pickerViewData = [Store]()

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        self.navigationController?.navigationBar.topItem?.title = ""
        
        let store1 = Store(context: context)
        store1.name = "Apple Store"
        
        let store5 = Store(context: context)
        store5.name = "Whole Foods"
        
        let store2 = Store(context: context)
        store2.name = "Amazon"
        
        let store3 = Store(context: context)
        store3.name = "Levis Store"
        
        let store4 = Store(context: context)
        store4.name = "Costco"
        
        fetchStores()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //print("This is the height: \(titleTxtFld.frame.size.height)")
        //print(pickerViewData)
    }
 
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pickerViewData.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        //error silencer
        return pickerViewData[row].name
    }
    
    //custom store objects fetcher
    
    func fetchStores() {
        let fetchRequest: NSFetchRequest<Store> = Store.fetchRequest()
        
        do {
            try self.pickerViewData = context.fetch(fetchRequest)
        } catch let error as NSError {
            //handle error
            print(error.localizedDescription)
        }
        
    }
    
    
    @IBAction func saveTapped(sender: UIButton) {
        
        let item = Item(context: context)
        
        if titleTxtFld.text != nil {
            item.title = titleTxtFld.text
        }
        
        if priceTxtFld.text != nil {
            item.price = Double(priceTxtFld.text!)!
        }
        
        if detailsTxtFld.text != nil {
            item.details = detailsTxtFld.text
        }
        
        item.toStore = pickerViewData[pickerView.selectedRow(inComponent: 0)]
        
        ad.saveContext()
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
