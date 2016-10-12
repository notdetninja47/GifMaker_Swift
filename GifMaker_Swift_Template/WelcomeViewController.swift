//
//  WelcomeViewController.swift
//  GifMaker_Swift
//
//  Created by Daniel on 12.10.16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var gifImageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let proofOfConceptGif = UIImage.gifWithName("tinaFeyHiFive")
        gifImageView.image = proofOfConceptGif
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
