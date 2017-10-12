//
//  ViewController.swift
//  TmpAsDiu
//
//  Created by Don Mag on 10/12/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	@IBOutlet weak var theLabel: UILabel!
	@IBOutlet weak var theTableView: UITableView!
	
	@IBAction func btnTapped(_ sender: Any) {
		theLabel.isHidden = !theLabel.isHidden
	}
	

	override func viewDidLoad() {
		super.viewDidLoad()

		theTableView.register(UITableViewCell.self, forCellReuseIdentifier: "ezCell")
		
		theTableView.dataSource = self
		theTableView.delegate = self
		
	}

	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return "section \(section)"
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 3
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 12
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ezCell", for: indexPath)
		cell.textLabel?.text = "row \(indexPath.row)"
		return cell
	}
	
}

