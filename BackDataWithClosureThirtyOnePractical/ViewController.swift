//
//  ViewController.swift
//  BackDataWithClosureThirtyOnePractical
//
//  Created by Mac on 02/05/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var rollNoLabel: UILabel!
    
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButton(_ sender: Any)
    {
     
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        /*
        secondViewController?.backDataPass = {
            (fName,lName,rNo) in
            self.firstNameLabel.text = fName
            self.lastNameLabel.text = lName
            self.rollNoLabel.text = String(rNo)
        }
        */
        
        //Way 2
        secondViewController?.backDataPass = {
        (Student) in
            self.firstNameLabel.text = Student.firstName
            self.lastNameLabel.text = Student.lastName
            self.rollNoLabel.text = String(Student.rollNo)
        }
        
        
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
}

