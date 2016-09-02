//
//  MovieTableViewController.swift
//  MovieApp
//
//  Created by ycliang on 2016/9/2.
//  Copyright © 2016年 Alex Liang. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movieList = ["美國隊長", "鋼鐵人"]
    var movieImageList = ["captain-america", "iron-man"]
    var releaseDateList = ["2016-07-16", "2015-04-11"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: "MovieTableViewCell", bundle: nil), forCellReuseIdentifier: "MovieTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieList.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MovieTableViewCell", forIndexPath: indexPath) as! MovieTableViewCell

        // Configure the cell...
        cell.movieTitleLabel.text = movieList[indexPath.row]
        cell.movieImageView.image = UIImage(named: movieImageList[indexPath.row])
        cell.releaseDateLabel.text = "上映日期： \(releaseDateList[indexPath.row])"
        
        return cell
    }
}
