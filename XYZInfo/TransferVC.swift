//
//  TransferVC.swift
//  XYZInfo
//
//  Created by Antonius George on 10/2/17.
//  Copyright © 2017 Antonius GS. All rights reserved.
//

import UIKit



class TransferVC: UIViewController {
	@IBOutlet weak var recepient: UITextField!
	@IBOutlet weak var amount: UITextField!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func onSubmit(_ sender: Any) {
		connectionLogic.shared.transferRequest(Recipient: recepient.text!, Amount: amount.text!)
		recepient.text = ""
		amount.text = ""
		
	}
	


}
