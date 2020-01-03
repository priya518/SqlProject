//
//  ViewController.swift
//  Sqlproject
//
//  Created by Nilrajsinh Vaghela on 23/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Class: UITextField!
    
    
      var data = [[String:Any]]()
    
     var dbObj:File!
    
     var editdata = [String:Any]()
    
    @IBAction func btnsave(_ sender: UIButton) {
        
        
         var cmd = ""
                                   if(editdata.keys.count == 0)
                                   {
                                       // to insert
                                       cmd = "insert into Info(Name,Class) values(\"\(Name.text!)\",\"\(Class.text!)\")"
                                       
                                   }
                                   else{
                                       //to update
                                       cmd = "update Info set name = '\(Class.text!)' where id = \(Name.text!)"
                                       Name.text = ""
                                       Class.text = ""
                                       editdata = [String:Any]()
                                   }
                                   
        if (dbObj.Execute(SQLCommnad: cmd))
                                   {
                                       print("Inserted")
                                   }
                                   else{
                                       print("Not Inserted")
                                   }
                    
             
              //  super.viewWillAppear(true)
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

