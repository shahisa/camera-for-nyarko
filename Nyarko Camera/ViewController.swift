//
//  ViewController.swift
//  Nyarko Camera
//
//  Created by John Doe on 11/10/15.
//  Copyright © 2015 Mobile Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate  {
    
    
    @IBOutlet weak var Photo: UIButton!
    
    
    @IBOutlet weak var Camera: UIButton!
    
    
    @IBOutlet weak var Image: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func PhotoAction(sender: UIButton) {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .PhotoLibrary
        
        
        presentViewController(picker,animated: true, completion: nil)
        
        
        
        
        
    }
    
    @IBAction func CameraAction(sender: UIButton) {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .Camera
        
        
        presentViewController(picker,animated: true, completion: nil)
        

        
        
    }
    func imagePickerController(picker: UIImagePickerController,didFinishPickingMediaWithInfo info: UIImage, editingInfo: [String : AnyObject]) {
        Image.image = info
        [UIImagePickerControllerOriginalImage] as? UIImage;dismissViewControllerAnimated(true,completion: nil)
    }
    
    
    
}

