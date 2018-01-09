//
//  ViewController.swift
//  TestDevices
//
//  Created by Henry AT on 9/8/15.
//  Copyright (c) 2015 Apps4s. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

  
  
  @IBOutlet weak var imageView: UIImageView!
  var imagePicker: UIImagePickerController!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    

    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func takeFoto(sender: AnyObject) {
    
    imagePicker = UIImagePickerController()
    imagePicker.delegate = self
    imagePicker.sourceType = .Camera
    presentViewController(imagePicker, animated: true, completion: nil)
  }
  
  func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
    imagePicker.dismissViewControllerAnimated(true, completion: nil)
    imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
  }
  

}

