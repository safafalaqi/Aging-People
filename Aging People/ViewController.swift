//
//  ViewController.swift
//  Aging People
//
//  Created by Safa Falaqi on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let nameList:[String] =  ["George","Betty","Fran","Joe","Helda","Winifred","Zed","Sara","Jeffy","Abraham","Anna","Melinda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        // set text label to the model that is corresponding to the row in array
        cell.textLabel?.text = nameList[indexPath.row]
        cell.detailTextLabel?.text = "\(Int.random(in: 5...95)) years old"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  
        //when name clicked display name with detail in alert
     
        // create the alert
        let alert = UIAlertController(title: "", message: "You clicked on  \(nameList[indexPath.row])", preferredStyle: UIAlertController.Style.alert)
    
        // add an action (button)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
}

