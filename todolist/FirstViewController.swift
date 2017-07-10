//
//  FirstViewController.swift
//  todolist
//
//  Created by admin on 7/10/17.
//  Copyright © 2017 indosystem. All rights reserved.
//

import UIKit
 var list = ["bangun" , "kuliah", "makan" , "pulang"]
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    
    @IBOutlet weak var myTableview: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableview.reloadData()
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        myTableview.reloadData()
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

