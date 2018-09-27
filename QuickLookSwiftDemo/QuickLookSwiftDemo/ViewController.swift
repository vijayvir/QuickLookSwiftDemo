//
//  ViewController.swift
//  QuickLookSwiftDemo
//
//  Created by Nitish Sharma on 27/09/18.
//  Copyright © 2018 vijayvir Singh. All rights reserved.
//
import UIKit
import QuickLook
// Quick look Swift Demo
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        
        
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func actionQuiclLook(_ sender: UIButton) {
        
        let path = Bundle.main.path(forResource: "article", ofType: "pdf")
        let pathUrl = URL.init(fileURLWithPath: path!)
        
        // item to show
        let item : QLSPreviewItem = QLSPreviewItem(url: pathUrl, tittle: "Raqndoim Text")
        let datasourse : QLSDataSource = QLSDataSource(previewItem: item)
        let qlController : QLSPreviewController =  QLSPreviewController()
        qlController.dataSource  = datasourse
        self.present(qlController, animated: true)
    }
    
    
}
