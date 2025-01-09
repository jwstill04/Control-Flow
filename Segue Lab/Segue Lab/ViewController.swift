//
//  ViewController.swift
//  Segue Lab
//
//  Created by cmh-bstudent on 1/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameField.text
        }
    }

    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUserOrPass", sender: sender)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUserOrPass", sender: sender)
    }
    
}

