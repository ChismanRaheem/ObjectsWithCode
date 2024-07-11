//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Raheem Chisman on 7/10/24.
//

import UIKit

class ViewController: UIViewController {
    let myLabel = UILabel()
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        /*
         Here we create a label manually instead of using the library UI to drag and drop a label
         Since we are not sure of the location we set every value to 100 for testing and will need to run the code to validate and make adjustments.
         */
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50 / 2, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.7 - 160, width: 200, height: 100)
        view.addSubview(myButton)
        
        
        // adding actions to the button
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }

    @objc func myAction () {
        myLabel.text = "Button Clicked 😎!"
        print("Button Clicked")
        
    }

}

