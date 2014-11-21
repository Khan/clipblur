// Playground - noun: a place where people can play

import AppKit

var pb = NSPasteboard.generalPasteboard()
//pb.pasteboardItems
pb.types

var avail = pb.availableTypeFromArray([NSPasteboardTypePNG])?


if pb.canReadItemWithDataConformingToTypes([NSPasteboardTypePNG]) {
    "yay!"
    let d = pb.dataForType(NSPasteboardTypePNG)!
    let i = NSImage(data: d)
    let r = NSRect(origin: CGPointMake(0, 0), size: i!.size)
    let v = NSImageView(frame:r)
    v.image = i
}
