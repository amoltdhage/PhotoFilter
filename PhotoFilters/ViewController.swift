//
//  ViewController.swift
//  PhotoFilters
//
//  Created by Amol Tukaram Dhage on 28/07/17.
//  Copyright © 2017 AmolTDhage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    let context = CIContext (options:nil)
    
    @IBAction func applyFilterButton(_ sender: Any) {
        
        let inputImage = CIImage(image: photoImageView.image!)
        
        let randomColor = [kCIInputAngleKey: (Double(arc4random_uniform(314))/100)]
        
        let filteredImage = inputImage?.applyingFilter("CIHueAdjust", withInputParameters: randomColor)
        
        let renderedImage = context.createCGImage(filteredImage!, from: filteredImage!.extent)
        
        photoImageView.image = UIImage(cgImage: renderedImage!)
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

