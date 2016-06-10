//
//  MainViewController.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/9/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import UIKit
import SwipeViewController

class SlideViewController: SwipeViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let stb = UIStoryboard(name: "Main", bundle: nil)
        let page_one = stb.instantiateViewControllerWithIdentifier("page1") as UIViewController
        let page_two = stb.instantiateViewControllerWithIdentifier("page2") as UIViewController
        let page_three = stb.instantiateViewControllerWithIdentifier("page3") as UIViewController
        
        setViewControllerArray([page_one, page_two, page_three])
        
        setNavigationColor(UIColor.blueColor())

        setSelectionBar(80, height: 5, color: UIColor.redColor())
        
        page_one.title = "Medicine"
        page_two.title = "Schedules"
        page_three.title = "Patients"
        
        setButtons(UIFont.systemFontOfSize(18), color: UIColor.redColor())
        
        let barButton = UIBarButtonItem(title: "Hey", style: .Plain, target: self, action: nil)
        
        //barButton.
        
        setNavigationWithItem(UIColor.whiteColor(), leftItem: barButton, rightItem: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
