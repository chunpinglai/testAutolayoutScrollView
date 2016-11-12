//
//  ViewController.swift
//  testScrollView
//
//  Created by AbbyLai on 2016/11/12.
//  Copyright © 2016年 AbbyLai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/*
     主要：
     1.scrollView 裡面裝一個container view.
     2.container view width is equal to scrollView.
    *3.container view height is equal to scrollView.(low priority)
     4.the label height should connect to the bottom of container view
     */
    
    
/*
     http://stackoverflow.com/questions/38485129/height-of-contentview-of-uiscrollview-based-on-inside-content-using-storyboard
     
     I've been able to get dynamic scroll views working entirely from storyboards, no code, with the following steps:
     
     1) In the storyboard, add a scroll view and constrain its edges to the edged of the main view or in whatever way is appropriate
     
     2) Inside the scroll view, add a plain old UIView as a container. Constrain it to all 4 edges of the scroll view, BUT ALSO add an equal width constraint relative to scroll view, and an equal height constraint to the scroll view
     
     3) Very important: set a low priority for the equal height constraint, e.g. 250.
     
     4) inside the container view you added in step 2, add your 3 modules. Constrain the top edge of the first module to the top of the container view, constrain the bottom edge of the last module to the bottom of the container view, and constrain all the in-between modules to the preceding module in the chain. This should give you your chain of unbroken vertical constraints inside the container view. You will also need to add whatever appropriate x positioning / width setting constraints to each module.
     
     5) Build and run! Your scroll view content size should automatically be equal to the total height of all modules plus the spacing between them, and changing the module contents dynamically will update the scroll view content size via auto layout rather than requiring explicit code to calculate and update.
 */
}

