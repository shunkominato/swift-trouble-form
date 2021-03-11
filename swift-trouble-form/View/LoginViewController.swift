//
//  LoginViewController.swift
//  swift-trouble-form
//
//  Created by macbook on 2021/03/10.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    
    var provider: OAuthProvider?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.provider = OAuthProvider(providerID: TwitterAuthProvider)
        provider?.customParameters = ["lang":"ja"]

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TwitterLogin(_ sender: Any) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
