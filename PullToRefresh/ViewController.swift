//
//  ViewController.swift
//  PullToRefresh
//
//  Created by STUDENT on 16/04/2019.
//  Copyright © 2019 STUDENT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private var refreshControl: UIRefreshControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshControl = UIRefreshControl()
        
        let action = #selector(onPullToRefresh(_:))
        refreshControl.addTarget(self, action: action, for: .valueChanged)
        
        tableView.refreshControl = refreshControl
    }

    @IBAction func onPullToRefresh(_ sender: UIRefreshControl) {
        
        print(#function)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) { [weak sender] in
            sender?.endRefreshing()
        }
    }
}

