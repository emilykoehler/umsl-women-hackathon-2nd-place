//
//  ViewController.swift
//  CloneMe
//
//  Created by David Guidos on 11/3/18.
//  Copyright © 2018 GuidosLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var needPickerView: UIPickerView!
    var needPickerData: [String] = [String]()
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var responseViewController = ResponseViewController()
    
    var responseTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.needPickerView.delegate = self
        self.needPickerView.dataSource = self

        needPickerData = ["Watch My Kids", "Check On My House", "Escort Me Home"]
    }
    
    // Number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return needPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return needPickerData[row]
    }

    // Capture the picker view selection
    func needPickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

    }
    
    @IBAction func submitted(_ sender: Any) {
        messageLabel.text = "Your request has been submitted. Thank you!"
        showResponse()
    }
    
    func showResponse() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { // 5 seconds
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            self.responseViewController = storyboard.instantiateViewController(withIdentifier: "ResponseViewController") as! ResponseViewController
            self.present(self.responseViewController, animated: true, completion: nil)
        }
//        responseTimer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { (timer) in
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            self.responseViewController = storyboard.instantiateViewController(withIdentifier: "ResponseViewController") as! ResponseViewController
//            self.present(self.responseViewController, animated: true, completion: nil)
//        }
    }
    
}

