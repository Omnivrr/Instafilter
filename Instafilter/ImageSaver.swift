//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Bukhari Sani on 06/08/2023.
//

import UIKit

class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil )
        
        
    }
    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo:
                             UnsafeRawPointer) {
        print("Save finished")
    }
}