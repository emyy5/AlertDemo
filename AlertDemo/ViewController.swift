//
//  ViewController.swift
//  AlertDemo
//
//  Created by Eman Khaled on 06/06/2023.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var imgV: UIImageView!
    
    @IBAction func showPic(_ sender: Any) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            picker.sourceType = .photoLibrary
            picker.allowsEditing = true
            self.present(picker, animated: true)
        }
        else{
            print("cam not available")
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imgV.image = info[.editedImage] as! UIImage
        self.dismiss(animated: true)
    }
    
    @IBAction func showMsg(_ sender: Any) {
        
        let alert = UIAlertController(title: "iTi", message: "welcome to me", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: {
            action in
            print("ok button clicked")
        }))
        alert.addAction(UIAlertAction(title: "cancel", style: .destructive, handler: {
            action in
            print("ok button clicked2")
        }))
        
        self.present(alert, animated: true){
            print("after alert")
        }
    }
}

