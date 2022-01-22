//
//  main.swift
//  TerminalPortal
//
//  Created by Hudson Reich on 1/22/22.
//

import Foundation
let directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
let fileURL = URL(fileURLWithPath: "PortalCustom", relativeTo: directoryURL).appendingPathExtension("txt")
// Create data to be saved
// Save the data
func a(myString: String) -> Void {
    guard let data = myString.data(using: .utf8) else {
        print("Unable to convert string to data")
        return
    }
    do {
     try data.write(to: fileURL)
     print("File saved: \(fileURL.absoluteURL)")
    } catch {
     // Catch any errors
     print(error.localizedDescription)
    }
}
print("Welcome to TerminalPortal. TerminalPortal is a portal to common websites that also allows you to add you own!")
while let str = readLine() {
    if str.contains("tportal") {
        //Function Stuff
        if str.contains(" start"){
            a(myString: "Hello")
        } else if str.contains(" end"){
          break
        } else {
            print("Error 002: No Func")
        }
    }
    else {
        print("Error 001: No parsible input")
    }
}


