//
//  GifEditorViewController.swift
//  GifMaker_Swift
//
//  Created by Daniel on 12.10.16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class GifEditorViewController: UIViewController {


    @IBOutlet weak var gifImageView: UIImageView!
    @IBOutlet weak var captionTextField: UITextField!
    
    var gif: Gif?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated) 
        gifImageView.image = gif?.gifImage
    }
 

}
