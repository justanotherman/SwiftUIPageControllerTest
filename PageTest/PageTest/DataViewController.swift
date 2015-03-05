//
//  DataViewController.swift
//  PageTest
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let circle = CGRect(x: 86, y: 86, width: 100, height: 100)
    
    var dataObject: AnyObject?
    var location = CGPoint(x:0, y:0)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let obj: AnyObject = dataObject {
            self.dataLabel!.text = obj.description
        } else {
            self.dataLabel!.text = ""
        }
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        var touch : UITouch! = touches.anyObject() as UITouch
        
        location = touch.locationInView(self.view)
        
        let rootViewController = self.parentViewController? as UIPageViewController
        if imageView.frame.contains(location) {
            rootViewController.dataSource = nil
            dataLabel.text = "Page should not scroll"
        } else {
            rootViewController.dataSource = self.modelController
            dataLabel.text = "Page can scroll"
        }
    }

    var modelController: ModelController {
        if _modelController == nil {
            _modelController = ModelController()
        }
        return _modelController!
    }
    var _modelController: ModelController? = nil
    
}

