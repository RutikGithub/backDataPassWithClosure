//
//  SecondViewController.swift
//  BackDataWithClosureThirtyOnePractical
//
//  Created by Mac on 02/05/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var rollNo: UITextField!
    
  // Way First
    //  var backDataPass:((String,String,Int)->Void)?
    
    //Way Second
    var backDataPass:((Student)->Void)?
    
        
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
          }
    
    
    
    @IBAction func backButton(_ sender: Any)
    {
        // way First
        /*
        guard let dataPass = backDataPass else { return  }
        
        let fName = firstName.text!
        let lName = lastName.text!
        let rNo = Int(rollNo.text!)!
        
        dataPass(fName,lName,rNo)

        */
        
        // Way 2
        
        guard let dataPass = backDataPass else { return  }
        let fName = firstName.text!
        let lName = lastName.text!
        let rNo = Int(rollNo.text!)!
        
        dataPass(Student(firstName: fName, lastName: lName, rollNo: rNo))
        
        navigationController?.popViewController(animated: true)
        
    }
    
  
}
