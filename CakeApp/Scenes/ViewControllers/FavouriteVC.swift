
//
//  FavouriteVC.swift
//  CakeApp
//
//  Created by  anmol
//

import UIKit

class FavouriteVC: UIViewController, UICollectionViewDataSource , UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.favListData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CakeViewCell", for: indexPath) as! CakeViewCell
        cell.configCellFav(data: self.favListData[indexPath.row])
        return cell
    }
   

    @IBOutlet weak var FavList: DynamicCollectionView!
    @IBOutlet weak var cakeListView: UIView!
    
    
    var favListData: [FavouriteModel] = [FavouriteModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getFavCakeList()
        self.cakeListView.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }
}


extension FavouriteVC {
    func getFavCakeList() {
        let email = UserDefaults.standard.string(forKey: UserDefaults.Keys.user)
        _ = AppDelegate.shared.db.collection(cFavourite).whereField(cEmail, isEqualTo: email).addSnapshotListener{ querySnapshot, error in
            guard let snapshot = querySnapshot else {
                print("Error fetching snapshots: \(error!)")
                return
            }
            self.favListData.removeAll()
            if snapshot.documents.count != 0 {
                for data in snapshot.documents{
                    let data = data.data()
                    print(data)
                   // self.favListData.append(ProductModel(id: data["id"] as! String, image: (data["image"] as! String), name: (data["name"] as! String), description: (data["description"] as! String), price: (data["price"] as! String)))
                    
                    self.favListData.append(FavouriteModel(id: data["id"] as! String, image: (data["image"] as! String), name: (data["name"] as! String), description: (data["description"] as! String), price: (data["price"] as! String), email: (data["email"] as! String), isFav: (data["isFav"] as! Bool)))
                }
                self.FavList.delegate = self
                self.FavList.dataSource = self
                self.FavList.reloadData()
    
            }else{
                Alert.shared.showAlert(message: "No Data Found !!!", completion: nil)
            }
        }
        
    }
}
