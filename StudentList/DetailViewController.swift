//
//  DetailViewController.swift
//  StudentList
//
//  Created by Nipuni Obe on 3/22/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var studentTextField: UITextField!
    
    var student: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if student == nil {
            student = ""
        }
        studentTextField.text = student
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
}
