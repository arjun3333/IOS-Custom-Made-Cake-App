//
//  CakeTypeViewController.swift
//  CakeApp
//
//  Created by 2022M3 on 18/01/22.
//

import UIKit

class CakeTypeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.typeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TypeCell", for: indexPath) as! TypeCell
        cell.configCell(data: typeData[indexPath.row])
        return cell
    }
    

    @IBOutlet weak var cakeList: SelfSizedTableView!
    
    
    let typeData: [model] = [
        model(imageString: "regular", title: "Regular", typeCake: .type),
        model(imageString: "gluten free", title: "Gluten Free", typeCake: .type),
        model(imageString: "vegan", title: "Vegan", typeCake: .type),
        model(imageString: "eggless", title: "Eggless", typeCake: .type),
        model(imageString: "sugar free", title: "Sugar Free", typeCake: .type),
        model(imageString: "fondant", title: "Fodant", typeCake: .type)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cakeList.delegate = self
        self.cakeList.dataSource = self
        // Do any additional setup after loading the view.
    }
}

