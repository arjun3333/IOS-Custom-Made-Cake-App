//
//  CakeDetailsViewController.swift
//  CakeApp
//
//  Created by Shivanee.
//

import UIKit

class CakeDetailsViewController: UIViewController {
    @IBOutlet weak var imgCake: UIImageView!
    @IBOutlet weak var btnCart: UIButton!
    @IBOutlet weak var btnFav: UIButton!
    @IBOutlet weak var lblCakeTitle: UILabel!
    @IBOutlet weak var lblCakeDescription: UILabel!
    
    
    var data: ProductModel!
    
    @IBAction func btnAddFavClick(_ sender: Any) {
        self.addFavData()
        Alert.shared.showAlert(message: "Your cake has been added into favourite list"){ _ in
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func btnAddCartClick(_ sender: Any) {
        self.addOrderData()
        Alert.shared.showAlert(message: "Your cake has been placed") { _ in
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.btnFav.layer.cornerRadius = self.btnFav.layer.frame.height / 2
            self.btnCart.layer.cornerRadius = self.btnCart.layer.frame.height / 2
            
            if self.data != nil {
                self.lblCakeTitle.text = self.data.name.description
                self.imgCake.setImgWebUrl(url: self.data.image, isIndicator: true)
                self.lblCakeDescription.text = self.data.description.description
            }
        }
    }
    
    
    func addFavData(){
        var ref : DocumentReference? = nil
        
        ref = AppDelegate.shared.db.collection(cFavourite).addDocument(data:
                                                                        [ cName: self.data.name.description,
                                                                            cId: self.data.id.description,
                                                                        cPrice : self.data.price.description,
                                                                   cDescription: self.data.description.description,
                                                                         cImage: self.data.image.description,
                                                                         cEmail: UserDefaults.standard.string(forKey: UserDefaults.Keys.user)?.description,
              cIsFav: true
            ])
        {  err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                //self.flag = true
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
    
    
