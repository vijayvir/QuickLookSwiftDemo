# QuickLookSwiftDemo

QuickLookSwiftDemo written in swift . 
iOS SDK provides a really handy little system to quickly preview documents, QuickLookSwiftDemo or QLPreviewController . 

## Features 
* custom title support. 

### QuickLookSwiftDemo can preview the following file formats: 

* iWork documents
* Microsoft Office documents
* Rich Text Format (RTF) documents
* PDF files (used in this example)
* Images
* Text files
* CSV files

## code 
```swift 
        let path = Bundle.main.path(forResource: "article", ofType: "pdf")
        let pathUrl = URL.init(fileURLWithPath: path!)

        // item to show
        let item : QLSPreviewItem = QLSPreviewItem(url: pathUrl, tittle: "Raqndoim Text")
        
        let datasourse : QLSDataSource = QLSDataSource(previewItem: item)
        let qlController : QLSPreviewController =  QLSPreviewController()
        // show item in controller . 
        qlController.dataSource  = datasourse
        qlController.delegate = datasourse
        self.present(qlController, animated: true) {    

        } ```
