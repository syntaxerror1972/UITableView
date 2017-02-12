//
//  ViewController.swift
//  UITableView
//
//  Created by Shrawan Shinde on 10/02/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    private let dataSource: NSArray = ["Data 1","Data 2","Data 3","Data 4","Data 5","Data 6","Data 7","Data 8","Data 9","Data 10","Data 11","Data 12","Data 13","Data 14","Data 15","Data 16","Data 17","Data 17"]
    private var tableView: UITableView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        tableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "dataItem")
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Data position: \(indexPath.row)")
        print("Data: \(dataSource[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataItem", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(dataSource[indexPath.row])"
        return cell
    }
    

}

