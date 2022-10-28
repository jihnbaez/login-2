//
//  ViewController.swift
//  login 2
//
//  Created by 8h on 10/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    @IBOutlet var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        segue.destination.navigationItem.title = userName.text
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else{
            segue.destination.navigationItem.title = userName.text
        }
    }
    @IBAction  func forgotPasswordButton(_ sender: UIButton){
        performSegue(withIdentifier: "ForgotUsername/Password", sender: sender)
    }
    @IBAction  func forgotUsernameButton(_ sender: UIButton){
        performSegue(withIdentifier: "ForgotUsername/Password", sender: sender)
    }

}

