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
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("ShowMovieDetail", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowMovieDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let vc = segue.destinationViewController as! MovieDetailViewController
                
                vc.navigationItem.title = movieList[indexPath.row]
                vc.movieDescription = "《美國隊長》（英語：Captain America: The First Avenger）是一部於2011年上映的美國動作電影，改編自漫威漫畫中的二次大戰期間的超級英雄故事《美國隊長》，由喬·約翰斯頓導演，克里斯·伊凡、湯米·李·瓊斯及雨果·威明主演。此片是漫威漫畫中第二部以3D拍攝的電影，也是漫威電影宇宙系列中的第五部電影。美國先在2011年7月22日上映，而香港則在2011年8月4日上映。"
                vc.movieImage = movieImageList[indexPath.row]
            }
        }
    }
}
