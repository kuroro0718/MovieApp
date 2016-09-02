//
//  MovieDetailViewController.swift
//  MovieApp
//
//  Created by ycliang on 2016/9/2.
//  Copyright © 2016年 Alex Liang. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    var movieDescription = ""
    var movieImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieDescriptionLabel.text = movieDescription
        movieImageView.image = UIImage(named: movieImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
