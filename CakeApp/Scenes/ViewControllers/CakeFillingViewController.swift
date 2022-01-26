
//
//  CakeFillingViewController.swift
//  CakeApp
//
//  Created by arjun on 18/01/22.
//

import UIKit

class CakeFillingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.typeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SizeCell", for: indexPath) as! SizeCell
        cell.configCell(data: typeData[indexPath.row])
        return cell
    }
    

    @IBOutlet weak var cakeList: SelfSizedTableView!
    
    
    let typeData: [model] = [
        model(imageString: "S", title: "Strawberry", typeCake: .filling),
        model(imageString: "O", title: "Oreo Cookie", typeCake: .filling),
        model(imageString: "M", title: "Mango", typeCake: .filling),
        model(imageString: "C", title: "Chocolate Rum", typeCake: .filling),
        model(imageString: "B", title: "Blackberry", typeCake: .filling),
        model(imageString: "A", title: "Almonds", typeCake: .filling)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cakeList.delegate = self
        self.cakeList.dataSource = self
        // Do any additional setup after loading the view.
    }
}
