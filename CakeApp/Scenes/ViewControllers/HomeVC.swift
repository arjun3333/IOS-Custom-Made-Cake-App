//
//  HomeVC.swift
//  CakeApp
//
//  Created by arjun on 08/01/22.
//

import UIKit

class HomeVC: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var btnCreate: UIButton!
    @IBOutlet weak var btnPreMade: UIButton!
    
    @IBOutlet weak var vwCreate: UIView!
    @IBOutlet weak var vwPreMade: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.btnCreate.layer.cornerRadius = self.btnCreate.frame.height / 2
            self.btnPreMade.layer.cornerRadius = self.btnPreMade.frame.height / 2
            
            self.vwCreate.layer.cornerRadius = 8
            
            self.vwPreMade.layer.cornerRadius = 8
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

