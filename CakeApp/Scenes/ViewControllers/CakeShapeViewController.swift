//
//  CakeShapeViewController.swift
//  CakeApp
//
//  Created by 2022M3 on 18/01/22.
//

import UIKit

class CakeShapeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
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
        model(imageString: "hexagon", title: "Hexagon", typeCake: .shape),
        model(imageString: "heart", title: "Heart", typeCake: .shape),
        model(imageString: "round", title: "Round", typeCake: .shape),
        model(imageString: "numeric", title: "Numeric", typeCake: .shape),
        model(imageString: "square", title: "Square", typeCake: .shape),
        model(imageString: "alphabet", title: "Alphabet", typeCake: .shape)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cakeList.delegate = self
        self.cakeList.dataSource = self
        // Do any additional setup after loading the view.
    }
}

