//
//  PhotoViewController.swift
//  Week 4 Facebook
//
//  Created by Anuj Verma on 2/25/15.
//  Copyright (c) 2015 Anuj Verma. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var biggerImageView: UIImageView!
    @IBOutlet weak var photoScrollView: UIScrollView!
    @IBOutlet weak var doneButton: UIButton!
    
    var detailImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        biggerImageView.image = detailImage
        photoScrollView.delegate = self
        photoScrollView.contentSize = CGSize(width: 320, height: 1000)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressDoneButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        // This method is called as the user scrolls
        println("Scrolling happening")
       doneButton.alpha = 0
        
        
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView!) {
        println("Scrolling started")
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
            println("Scrollign ended")
            dismissViewControllerAnimated(true, completion: nil)
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // This method is called when the scrollview finally stops scrolling.
    }

}
