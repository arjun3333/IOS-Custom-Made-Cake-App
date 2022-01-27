//
//  CakeSizeViewController.swift
//  CakeApp
//
//  Created by anmol
//

import UIKit

class CakeSizeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
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
        model(imageString: "0.5 lbs", title: "Serves 2-3", typeCake: .size),
        model(imageString: "1.0 lbs", title: "Serves 4-6", typeCake: .size),
        model(imageString: "1.5 lbs", title: "Serves 6-8", typeCake: .size),
        model(imageString: "2.0 lbs", title: "Serves 9-11", typeCake: .size),
        model(imageString: "2.5 lbs", title: "Serves 12-15", typeCake: .size),
        model(imageString: "3.0 lbs", title: "Serves 15-17", typeCake: .size)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cakeList.delegate = self
        self.cakeList.dataSource = self
        // Do any additional setup after loading the view.
    }
}



class SizeCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblServe: UILabel!
    
    func configCell(data: model){
        self.lblTitle.text = data.imageString
        self.lblServe.text = data.title
    }
}
