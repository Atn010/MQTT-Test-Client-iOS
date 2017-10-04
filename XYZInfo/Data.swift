//
//  Data.swift
//  XYZInfo
//
//  Created by Antonius George on 10/3/17.
//  Copyright © 2017 Antonius GS. All rights reserved.
//

import UIKit

class Data: NSObject {
	static let shared = Data()
	
	private override init() {
		print("Object initialized")
	}
	
	init(username: String, password: String) {
		clientID = username
		clientPass = password
		verificationStatus = false
	}
	
	
	var transferList:[String] = []
	var clientID: String = ""
	var clientPass: String = ""
	var	verificationStatus: Bool = false

}
