//
//  MenuViewController.swift
//  CakeApp
//
//  Created by Shivanee.
//

import UIKit
import FirebaseFirestore

class MenuViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.orderData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderViewCell", for: indexPath) as! orderViewCell
        cell.configCell(data: self.orderData[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.favListData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CakeViewCell", for: indexPath) as! CakeViewCell
        cell.configCellFav(data: self.favListData[indexPath.row])
        return cell
    }
   
    

    @IBOutlet weak var FavList: DynamicCollectionView!
   
    @IBOutlet weak var vwProfile: UIView!
    @IBOutlet weak var vwOrder: UIView!
    
    @IBOutlet weak var txtEmail: TextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnApple: UIButton!
    @IBOutlet weak var txtPassword: TextField!
    
    @IBOutlet weak var orderList: UITableView!
    
    var flag: Bool = false
    var favListData: [FavouriteModel] = [FavouriteModel]()
    var orderData: [OrderModel] = [OrderModel]()
    var appleData: AppleLoginModel!
    private let appleLoginManager: AppleLoginManager = AppleLoginManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.getOrderList()
        self.FavList.isHidden = true
        self.vwProfile.isHidden = true
        self.txtEmail.text = "Testios@grr.la"
        self.txtPassword.text = "Test@123"
        
        DispatchQueue.main.async {
            self.btnApple.layer.cornerRadius = self.btnApple.layer.frame.height / 2
            self.btnLogin.layer.cornerRadius = self.btnLogin.layer.frame.height / 2
            self.btnSignUp.layer.cornerRadius = self.btnSignUp.layer.frame.height / 2
        }
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnFavTapped(_ sender: Any) {
        getFavCakeList()
        self.FavList.isHidden = false
        self.vwOrder.isHidden = true
        self.vwProfile.isHidden = true
    }
    
    @IBAction func btnProfileTapped(_ sender: Any) {
        self.FavList.isHidden = true
        self.vwOrder.isHidden = true
        self.vwProfile.isHidden = false
    }
    
    @IBAction func btnOrderTapped(_ sender: Any) {
        self.getOrderList()
        self.FavList.isHidden = true
        self.vwOrder.isHidden = false
        self.vwProfile.isHidden = true
    }
    
    @IBAction func btnForgotPasswordTapped(_ sender: Any) {
        let vc = UIStoryboard.main.instantiateViewController(withClass: ForgotPasswordViewController.self)
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnSignUpTapped(_ sender: Any) {
        let vc = UIStoryboard.main.instantiateViewController(withClass: CreateAccountViewController.self)
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnSignWithAppleTapped(_ sender: Any) {
        self.appleLoginManager.performAppleLogin()
    }
    
    @IBAction func btncreateAccountTapped(_ sender: Any) {
        self.flag = false
        self.loginUser(email: self.txtEmail.text!, password: self.txtPassword.text!)
       // self.UploadData()
    }
    
    
    
    func addData(name:String,id:String,price:String,description:String,image:String){
        var ref : DocumentReference? = nil
        ref = AppDelegate.shared.db.collection(cProduct).addDocument(data:
            [ cName: name,
                cId: id.description,
                cPrice : price.description,
              cDescription: description,
              cImage: image
            ])
        {  err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                self.flag = true
                print("Document added with ID: \(ref!.documentID)")
            }
        }
    }
}


//MARK:- Extension for Login Function
extension MenuViewController {
    
    func loginUser(email:String,password:String) {
    
        _ = AppDelegate.shared.db.collection(cUser).whereField(cEmail, isEqualTo: email).whereField(cPassword, isEqualTo: password).addSnapshotListener{ querySnapshot, error in
            
            guard let snapshot = querySnapshot else {
                print("Error fetching snapshots: \(error!)")
                return
            }
            
            if snapshot.documents.count != 0 {
                if let fullName : String = snapshot.documents[0].data()["fullName"] as? String, let email:String = snapshot.documents[0].data()["email"] as? String, let contact:String = snapshot.documents[0].data()["contactNumber"] as? String {
                    GFunction.shared.firebaseLogin(data: email)
                    GFunction.user = UserModel(emailId: email, fullName: fullName, contactNo: contact)
                    UserDefaults.standard.set(true, forKey: UserDefaults.Keys.currentUser)
                    UserDefaults.standard.set(email, forKey: UserDefaults.Keys.user)
                    UserDefaults.standard.synchronize()
                    self.flag = false
                    UIApplication.shared.setHome()
                }
            }else{
                if self.flag {
                    Alert.shared.showAlert(message: "Please check your credentials !!!", completion: nil)
                    self.flag = false
                }
            }
        }
    }
    
    func createAccount(contact:String,fullName:String,password:String,email:String) {
        var ref : DocumentReference? = nil
        
        ref = AppDelegate.shared.db.collection(cUser).addDocument(data:
            [ cContact: contact,
              cFullName: fullName,
              cPassword : password,
              cEmail: email,
              cServerTime : FieldValue.serverTimestamp()
            ])
        {  err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
                self.flag = true
                print("Document added with ID: \(ref!.documentID)")
                GFunction.user = UserModel(emailId: email, fullName: fullName, contactNo: contact)
                UserDefaults.standard.set(true, forKey: UserDefaults.Keys.currentUser)
                UserDefaults.standard.set(GFunction.user, forKey: UserDefaults.Keys.user)
                UserDefaults.standard.synchronize()
                UIApplication.shared.setHome()
            }
        }
    }
    
    func getExistingUser(contact:String,email:String,password:String,userFullName:String) {
    
        _ = AppDelegate.shared.db.collection(cUser).whereField(cEmail, isEqualTo: email).addSnapshotListener{ querySnapshot, error in
            
            guard let snapshot = querySnapshot else {
                print("Error fetching snapshots: \(error!)")
                return
            }
            
            if snapshot.documents.count == 0 {
                self.createAccount(contact: contact, fullName: userFullName, password: password, email: email)
                self.flag = true
            }else{
                if !self.flag {
                    Alert.shared.showAlert(message: "Email already exist !!!", completion: nil)
                    self.flag = true
                }
            }
        }
        
    }
    
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
    
    func getOrderList() {
        let email = UserDefaults.standard.string(forKey: UserDefaults.Keys.user)
        _ = AppDelegate.shared.db.collection(cOrders).whereField(cEmail, isEqualTo: email).addSnapshotListener{ querySnapshot, error in
            guard let snapshot = querySnapshot else {
                print("Error fetching snapshots: \(error!)")
                return
            }
            self.orderData.removeAll()
            if snapshot.documents.count != 0 {
                for data in snapshot.documents{
                    let data = data.data()
                    print(data)
                   // self.favListData.append(ProductModel(id: data["id"] as! String, image: (data["image"] as! String), name: (data["name"] as! String), description: (data["description"] as! String), price: (data["price"] as! String)))
                    
                    self.orderData.append(OrderModel(id: data["id"] as! String, image: (data["image"] as! String), name: (data["name"] as! String), description: (data["description"] as! String), price: (data["price"] as! String), email: (data["email"] as! String), isDeliver: (data["isDeliver"] as! Bool)))
                }
                self.orderList.dataSource = self
                self.orderList.delegate = self
                self.orderList.reloadData()
    
            }else{
                Alert.shared.showAlert(message: "No Data Found !!!", completion: nil)
            }
        }
        
    }
}

//MARK:- Apple Login
extension MenuViewController: AppleLoginDelegate {
    
    
    
    func appleLoginData(data: AppleLoginModel) {
        
        print("Social Id==>", data.socialId ?? "")
        print("First Name==>", data.firstName ?? "")
        print("Last Name==>", data.lastName ?? "")
        print("Email==>", data.email ?? "")
        print("Login type==>", data.loginType ?? "")
        self.getExistingUser(contact: "+1 1234567890", email: data.email, password: "123123", userFullName: data.firstName)
        //Pass Data among this
    }
    
}


