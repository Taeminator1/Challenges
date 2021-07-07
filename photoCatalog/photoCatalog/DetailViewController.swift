//
//  DetailViewController.swift
//  photoCatalog
//
//  Created by Taemin Yun on 7/6/21.
//  Copyright © 2021 Taemin Yun. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            print(detail as! String)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        configureView()
        
        let stringURL = "https://grepp-programmers-challenges.s3.ap-northeast-2.amazonaws.com/2020-flo/cover.jpg"
        if let url = URL(string: stringURL) {
            if let data = NSData(contentsOf: url) {
                imageView.image = UIImage(data: data as Data)
            }
        }
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

