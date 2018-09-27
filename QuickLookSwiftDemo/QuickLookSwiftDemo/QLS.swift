//
//  QLS.swift
//  QuickLookSwiftDemo
//
//  Created by Nitish Sharma on 27/09/18.
//  Copyright © 2018 vijayvir Singh. All rights reserved.
//

import Foundation
import UIKit
import QuickLook
// Quick look Swift Demo
class  QLSPreviewItem : NSObject , QLPreviewItem {
    var previewItemURL: URL?
    var previewItemTitle: String?
    init(url : URL , tittle :String ) {
        previewItemURL = url
        previewItemTitle = tittle
    }
}
class QLSDataSource : NSObject   {
    var  previewItem : QLSPreviewItem
    
    init(previewItem : QLSPreviewItem) {
        self.previewItem = previewItem
    }
}
extension QLSDataSource : QLPreviewControllerDataSource{
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return 1
    }
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        return self.previewItem
    }
}
extension QLSDataSource : QLPreviewControllerDelegate {
    

    func previewControllerWillDismiss(_ controller: QLPreviewController) {
        
    }
    func previewControllerDidDismiss(_ controller: QLPreviewController) {
        
    }
    func previewController(_ controller: QLPreviewController, shouldOpen url: URL, for item: QLPreviewItem) -> Bool{
        return true
    }
}

class QLSPreviewController : QLPreviewController {
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(true)
        self.navigationItem.rightBarButtonItems = nil
        
    }
    
}
