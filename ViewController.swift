//
//  ViewController.swift
//  MultiplicationTable App
//
//  Created by Saanvi Srivastava on 23/10/2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var inputNumber: UITextField!
    
    var multiplicationTable: [String] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return multiplicationTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let aCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        var content = UIListContentConfiguration.cell()
        content.text = multiplicationTable[indexPath.row]
        aCell.contentConfiguration = content
        
        return aCell
    }
    
    @IBAction func goButtonPressed(_ sender: UIButton) {
        
        print("go pressed")
        inputNumber.resignFirstResponder()
        multiplicationTable.removeAll()

                if let text = inputNumber.text,
                   let multiplier = Int(text) {

                    for i in 1...30 {
                        let result = multiplier * i
                        multiplicationTable.append("\(multiplier) x \(i) = \(result)")
                    }

                    myTable.reloadData()
                }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
    }


}

