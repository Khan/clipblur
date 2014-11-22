//
//  main.swift
//  cliptest
//
//  Created by Marcos Ojeda on 11/20/14.
//  Copyright (c) 2014 Marcos Ojeda. All rights reserved.
//

import Foundation
import AppKit

func imToPng(image:NSImage!) -> Bool {
    if image.representations.count > 0 {
        println("numerous representations!")
        
        if let imageData = image!.TIFFRepresentation? {
            println("going tiff mode!")
            let rep = NSBitmapImageRep(data: imageData)
            let pngData = rep?.representationUsingType(
                NSBitmapImageFileType.NSPNGFileType, properties: [:])
            pngData?.writeToFile("~/Desktop/blah.png".stringByExpandingTildeInPath, atomically: false)
            return true
        }
    }
    
    return false
}

func blurro() {
    var pb: NSPasteboard
    
    pb = NSPasteboard.generalPasteboard()
    
    if pb.canReadItemWithDataConformingToTypes([NSPasteboardTypePNG]) {

        let pasteboardData = pb.dataForType(NSPasteboardTypePNG)!
        let pasteboardImage = NSImage(data: pasteboardData)
        // i clearly did something wrong here
        // let blurryImage = UIImageEffects.imageByApplyingLightEffectToImage(pasteboardImage)
        
        imToPng(pasteboardImage)
    }
}

blurro()