
//
//  CreateAccountViewController.swift
//  CakeApp
//
//  Created by anmol
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var txtEnterName: TextField!
    @IBOutlet weak var txtContactNo: TextField!
    @IBOutlet weak var txtEmail: TextField!
    @IBOutlet weak var txtPassword: TextField!
    @IBOutlet weak var btnCreateAccount: UIButton!
    @IBOutlet weak var txtConfirmPassword: TextField!
    
    
    var flag: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.txtConfirmPassword.text = "Test@123"
            self.txtPassword.text = "Test@123"
            self.txtEnterName.text = "Test iOS"
            self.txtEmail.text = "Testios@grr.la"
            self.txtContactNo.text = "+91 9874563210"
            self.btnCreateAccount.layer.cornerRadius = self.btnCreateAccount.layer.frame.height / 2
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func btncreateAccountTapped(_ sender: Any) {
        self.flag = false
        self.getExistingUser(contact: self.txtContactNo.text!, email: self.txtEmail.text!, password: self.txtPassword.text!, userFullName: self.txtEnterName.text!)
    }
}


//MARK:- Extension for Login Function
extension CreateAccountViewController {
    
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
                    //UserDefaults.standard.set(email, forKey: UserDefaults.Keys.user)
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
}
