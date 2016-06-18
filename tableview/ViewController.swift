//
//  ViewController.swift
//  tableview
//
//  Created by Cora Hays-Magan on 6/18/16.
//  Copyright © 2016 Doublebearrolled. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var cats = [Cat]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.cats = [Cat(name: "Charlie"), Cat(name: "Ella"), Cat(name: "Seabass"), Cat(name: "Cleo")]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cats.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var cat : Cat
        
        cat = cats[indexPath.row]
        cell.textLabel?.text = cat.name
        return cell
    }

}

