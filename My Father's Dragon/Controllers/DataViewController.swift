//
//  DataViewController.swift
//  FlimFlam
//
//  Created by Marcy Vernon on 10/31/18.
//  Copyright © 2018 Marcy Vernon. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    
    @IBOutlet var topText : UITextView!
    @IBOutlet var image   : UIImageView!
    @IBOutlet var text    : UITextView!
    
    var dataObject: PageContent = ("","","",0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        topText.text = dataObject.topText
        image.image  = UIImage(named : dataObject.pageImage)
        text.text    = dataObject.text
        
        image.isHidden   = K.styleConfig[dataObject.style].image
        topText.isHidden = K.styleConfig[dataObject.style].topText
        text.isHidden    = K.styleConfig[dataObject.style].text

    }
}

