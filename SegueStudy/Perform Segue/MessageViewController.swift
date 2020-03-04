//
//  MessageViewController.swift
//  SegueStudy
//
//  Created by 김정민 on 2020/03/04.
//  Copyright © 2020 kjm. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    
    
    @IBOutlet weak var labelName: UILabel!
    var segueName : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = segueName
    }
}
