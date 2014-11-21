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
        
        if let ir = image!.representations[0] as? NSBitmapImageRep{
            ir.representationUsingType(
                NSBitmapImageFileType.NSPNGFileType,
                properties: [:])?
                .writeToFile("~/Desktop/fuzzzz.png".stringByExpandingTildeInPath, atomically: true)
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