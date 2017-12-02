//
//  ViewController.swift
//  Curs2App1
//
//  Created by bla on 12/2/17.
//  Copyright © 2017 bla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        //CHECK THIS FOR PART 2
        // https://iswift.org/playground?8e19J6&v=3
        
        
        
        
        //printHelloWorld()
        //printHelloWorld(message : "Custom Hello World")
        //showAlert()
        showAlertController()
    }
    
    func showAlert(){
        let alertView  = UIAlertView(
            title:"Info",
            message:"Hello World",
            delegate:nil,
            cancelButtonTitle:"Ok"
            )
        
        alertView.show()
    }
    
    func showAlertController(){
        // my alert style
        let alertStyle = UIAlertControllerStyle.actionSheet
        //my custom alert controller
        let alertController = UIAlertController(
            title: "Info",
            message: "Hello World",
            preferredStyle: alertStyle
        )
        //my action style
        let actionStyle = UIAlertActionStyle.destructive
        // OK button
        let action = UIAlertAction(
            title: "OK",
            style: actionStyle,
            handler: nil
        )
        // add action to existing alert controller instance
        alertController.addAction(action)
        //show alert controller
        self.present(
            alertController,
            animated: true,
            completion: nil
        )
    }
    
    
    
    func printHelloWorld(){
        printHelloWorld(message : "Hello World")
    }
    
    func printHelloWorld(message : String){
        print(message)
    }
}

