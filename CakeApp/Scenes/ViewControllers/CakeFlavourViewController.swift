
//
//  CakeFlavourViewController.swift
//  CakeApp
//
//  Created by arjun on 18/01/22.
//

import UIKit

class CakeFlavourViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
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
        model(imageString: "A", title: "Almond", typeCake: .flavour),
        model(imageString: "B", title: "Black Current", typeCake: .flavour),
        model(imageString: "B", title: "Butterscotch", typeCake: .flavour),
        model(imageString: "C", title: "Chocolate", typeCake: .flavour),
        model(imageString: "D", title: "Dark Chocolate", typeCake: .flavour),
        model(imageString: "K", title: "Kit Kat", typeCake: .flavour)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cakeList.delegate = self
        self.cakeList.dataSource = self
        // Do any additional setup after loading the view.
    }
}

