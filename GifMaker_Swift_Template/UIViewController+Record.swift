//
//  UIViewController+Record.swift
//  GifMaker_Swift
//
//  Created by Daniel on 12.10.16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import Foundation
import UIKit
import MobileCoreServices


// MARK: Regift constants
let frameCount = 16
let delayTime: Float = 0.2
let loopCount = 0

extension UIViewController {
    @IBAction func launchVideoCamera(sender: AnyObject) {
        let recordVideoController = UIImagePickerController()
        recordVideoController.sourceType = UIImagePickerControllerSourceType.Camera
        recordVideoController.mediaTypes = [kUTTypeMovie as String]
        recordVideoController.allowsEditing = false
        recordVideoController.delegate = self
        
        presentViewController(recordVideoController, animated: true, completion: nil)
    }
}

extension UIViewController: UINavigationControllerDelegate{}

extension UIViewController: UIImagePickerControllerDelegate{
    public func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let mediaType = info[UIImagePickerControllerMediaType] as! String
        
        if mediaType == kUTTypeMovie as String {
            let VideoURL = info[UIImagePickerControllerMediaURL] as! NSURL
            UISaveVideoAtPathToSavedPhotosAlbum(VideoURL.path!, nil, nil, nil)
            dismissViewControllerAnimated(true, completion: nil)
            convertVideoToGIF(VideoURL)
        }
    }
    public func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func convertVideoToGIF (videoURL: NSURL) {
        let regift = Regift(sourceFileURL: videoURL, frameCount: frameCount, delayTime: delayTime)
        let gifURL = regift.createGif()
        let gif = Gif(withGifUrl: gifURL!, videoUrl: videoURL, caption: nil)
        displayGIF(gif)
    }
    
    func displayGIF(gif: Gif) {
        let gifEditorVC = storyboard?.instantiateViewControllerWithIdentifier("GifEditorViewController") as! GifEditorViewController
        gifEditorVC.gif = gif
        navigationController?.pushViewController(gifEditorVC, animated: true)
    }
}
