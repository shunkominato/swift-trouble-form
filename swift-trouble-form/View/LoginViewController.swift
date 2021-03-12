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
//        title = "悩みフォーム"
        
        self.provider = OAuthProvider(providerID: TwitterAuthProviderID)
        provider?.customParameters = ["lang":"ja"]

        // Do any additional setup after loading the view.
    }
    
    @IBAction func TwitterLogin(_ sender: Any) {
//        let FormVC = self.storyboard?.instantiateViewController(identifier: "FormVC") as! FormViewController
//        self.present(FormVC, animated: true, completion: nil)
        performSegue(withIdentifier: "FormViewController",sender: nil)
//        self.provider = OAuthProvider(providerID: TwitterAuthProviderID)
//        provider?.customParameters = ["force_login":"true"]
//        provider?.getCredentialWith(nil, completion: { (credential, error) in
//
//            Auth.auth().signIn(with: credential!) { (result, error) in
//
//                if error != nil{
//                    return
//                }
//
//                print("--------")
//                print(result?.user)
//
//                let FormVC = self.storyboard?.instantiateViewController(identifier: "FormVC") as! FormViewController
//
//                FormVC.userName = (result?.user.displayName)!
//
////                self.navigationController?.pushViewController(FormVC, animated: true)
////                self.performSegue(withIdentifier: "FormViewController", sender: nil)
//                self.present(FormVC, animated: true, completion: nil)
//            }
//        })
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let FormVC = segue.destination as! FormViewController
        FormVC.userName = "aaa"
    }

}
