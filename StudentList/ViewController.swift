//
//  ViewController.swift
//  StudentList
//
//  Created by Nipuni Obe on 3/22/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var students = ["Brendan Armstrong",
                    "Joe (Sanghyun) Back",
                    "Grace Carroll",
                    "Andrew Clark",
                    "Gage Condon",
                    "Adam Del Castillo",
                    "Emily Fabius",
                    "Jacqueline Girouard",
                    "Robert Glenning",
                    "Abrar Jalal",
                    "Jay Jung",
                    "Louise Kim",
                    "Michael Klein",
                    "Kristen Kranjc",
                    "Henry (Huaiyang) Li",
                    "Zachary Moelchert",
                    "Nipuni (Folashade) Obe",
                    "Lindsay Penkrat",
                    "William Redmond",
                    "Jose Riera",
                    "Brishti Saha",
                    "AB (Annabelle) Schultze",
                    "Chelsea Schwartz",
                    "Jesse Tuglu",
                    "Jacob Wang",
                    "Quinn Wilson",
                    "Jackson Winslow",
                    "Amy (Chuangdian) Zhao",
                    "Darren Zheng",
                    "Zheng Zhou",
                    "Ziyan (Terry) Zhuang"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("😎 numberOfRowsInSection was just called! Returning \(students.count) as our row count")
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        print("👊 cellForRowAt is building cell at indexPath.row \(indexPath.row) with value \(students[indexPath.row])")
        cell.textLabel?.text = students[indexPath.row]
        return cell
    }
}
