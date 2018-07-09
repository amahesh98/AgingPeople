//
//  ViewController.swift
//  AgingPeople
//
//  Created by Ashwin Mahesh on 7/9/18.
//  Copyright © 2018 AshwinMahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableData=["Alex", "Ashwin", "Andrew", "Joe", "Dave", "Rod", "Ken", "Eli", "Michael Choi", "Joshua", "Tony", "Jimmy GQ"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.dataSource=self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text=tableData[indexPath.row]
        cell.detailTextLabel?.text=String(arc4random_uniform(100))
        cell.textLabel?.textColor=UIColor.white
        cell.detailTextLabel?.textColor=UIColor.white
        let bgColorView=UIView()
        bgColorView.backgroundColor=UIColor.darkGray
        cell.selectedBackgroundView=bgColorView
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

