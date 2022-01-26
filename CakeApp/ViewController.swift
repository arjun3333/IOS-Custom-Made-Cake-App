
//
//  ViewController.swift
//  CakeApp
//
//  Created by arjun on 08/01/22.
//

import UIKit




class ViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var btnWelcome: UIButton!
    
    @IBAction func btnWelcomeClick(_ sender: Any) {
        UIApplication.shared.setHome()
    }
    
    //MARK:- View LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DispatchQueue.main.async {
            self.btnWelcome.layer.cornerRadius = self.btnWelcome.frame.height / 2
        }
    }
}

