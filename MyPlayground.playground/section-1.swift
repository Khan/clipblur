// Playground - noun: a place where people can play

import AppKit

var pb = NSPasteboard.generalPasteboard()
//pb.pasteboardItems
pb.types

var avail = pb.availableTypeFromArray([NSPasteboardTypePNG])?

