//
//  OrderViewController.swift
//  CakeApp
//
//  Created by Shivanee.
//

import UIKit

class OrderViewController: UIViewController, UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderViewCell", for: indexPath)
        
        return cell
    }
   

    
    @IBOutlet weak var orderList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.orderList.delegate = self
        self.orderList.dataSource = self
        // Do any additional setup after loading the view.
    }
    

}


class orderViewCell: UITableViewCell {
    
    @IBOutlet weak var cakePrice: UILabel!
    @IBOutlet weak var CakeName: UILabel!
    @IBOutlet weak var CakeQuantity: UILabel!
    @IBOutlet weak var CakeStatus: UILabel!
    @IBOutlet weak var imgCake: UIImageView!
    
    func configCell(data: OrderModel){
        self.CakeName.text = data.name
        self.cakePrice.text = "$\(data.price.description)"
        self.CakeQuantity.text = "Qty: 1"
        self.imgCake.setImgWebUrl(url: data.image, isIndicator: true)
        if data.isDeliver {
            self.CakeStatus.text = "Delivered"
        }else{
            self.CakeStatus.text = "Picked Up"
        }
        
    }
}

