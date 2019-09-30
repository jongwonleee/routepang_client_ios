//
//  ViewController.swift
//  itaewonProject
//
//  Created by 이종원 on 23/09/2019.
//  Copyright © 2019 이종원. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(){
        let alert = UIAlertController(title:"cong!",message: "can show alert",preferredStyle:.alert)
        let okAction = UIAlertAction(title:"ok",style:.default,handler: nil)
        alert.addAction(okAction)
        present(alert,animated:true,completion:nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let isFolder = data.rows[indexPath.row].isFolder;
        let isFolder = true
        
        if isFolder {
            let cell = tableView.dequeueReusableCell(withIdentifier: "folder", for: indexPath)
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "route", for: indexPath)
            
            return cell
        }
    }
}

