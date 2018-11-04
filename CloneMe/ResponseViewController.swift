//
//  ResponseViewController.swift
//  CloneMe
//
//  Created by David Guidos on 11/3/18.
//  Copyright © 2018 GuidosLabs. All rights reserved.
//

import UIKit

class ResponseViewController: UIViewController {

    @IBOutlet weak var responderImage: UIImageView!
   
    @IBOutlet weak var responderNameLabel: UILabel!
    
    @IBOutlet weak var responderLocationLabel: UILabel!
    
    @IBOutlet weak var responderPhoneLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        responderNameLabel.text = "Karthika Vandavasi"
        responderLocationLabel.text = "Saint Louis, MO"
        responderPhoneLabel.text = "(314) 555-1234"
        
        commentLabel.text = "I'm on my way!  Call if you need me."

    }
    
    @IBAction func callTapped(_ sender: Any) {
        showCalling()
    }
    
    
    func showCalling() {
        let alert = UIAlertController(title: "Calling", message: "Dialing the responder now at " + responderPhoneLabel.text! + ".", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                self.dismiss(animated: true, completion: nil)

            case .cancel:
                print("cancel")
                self.dismiss(animated: true, completion: nil)

            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
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
