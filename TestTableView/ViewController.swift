//
//  ViewController.swift
//  TestTableView
//
//  Created by Tin Tin on 8/2/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var num : Int = 0

    @IBOutlet weak var animalTableView: UITableView!
    
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var ClickAddNum: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalTableView.delegate = self
        animalTableView.dataSource = self
        
    }
    
    
    @IBAction func Click(_ sender: Any) {
        num += 1
        text.text = "\(num)"
    }
}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You select one of the cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalTableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        cell.textLabel?.text = "\(num)"
        return cell
    }
}
