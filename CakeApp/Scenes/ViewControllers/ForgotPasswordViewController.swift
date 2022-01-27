
//
//  ForgotPasswordViewController.swift
//  CakeApp
//
//  Created by anmol
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var txtNewPassword: TextField!
    @IBOutlet weak var txtConfirmPassword: TextField!
    @IBOutlet weak var txtEmail: TextField!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.async {
            self.btnSubmit.layer.cornerRadius = self.btnSubmit.frame.height / 2
        }
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func btnSubmitClicked(_ sender: Any) {
        self.updateData(email: (self.txtEmail.text?.trim())!, password: (self.txtConfirmPassword.text?.trim())!)
        self.navigationController?.popViewController(animated: true)
    }
    
    func updateData(email:String,password:String){
        
        var ref : DocumentReference? = nil
//        var ref: DatabaseReference!
//
//        ref = Database.database().reference()
//        ref = AppDelegate.shared.db.collection(cUser).addDocument(data:
//            [// cContact: contact,
//              //cFullName: fullName,
//              //cPassword : password,
//              cEmail: email,
//              cServerTime : FieldValue.serverTimestamp()
//            ])
//        {  err in
//            if let err = err {
//                print("Error adding document: \(err)")
//            } else {
////                self.flag = true
////                print("Document added with ID: \(ref!.documentID)")
////                GFunction.user = UserModel(emailId: email, fullName: fullName, contactNo: contact)
////                UserDefaults.standard.set(true, forKey: UserDefaults.Keys.currentUser)
////                UserDefaults.standard.set(GFunction.user, forKey: UserDefaults.Keys.user)
////                UserDefaults.standard.synchronize()
////                UIApplication.shared.setHome()
//            }
//        }

        
        _ = AppDelegate.shared.db.collection(cUser).whereField(cEmail, isEqualTo: email).addSnapshotListener{ querySnapshot, error in
            
            guard let snapshot = querySnapshot else {
                print("Error fetching snapshots: \(error!)")
                return
            }
            
            if snapshot.documents.count != 0 {
                print(snapshot.documents[0].data())
                let data = snapshot.documents[0].data()
               // AppDelegate.shared.db.collection(cUser).document().setData([cPassword: password])
                AppDelegate.shared.db.collection(cUser).document(snapshot.documents[0].documentID).setData([cPassword: password,
                                                                                                             cContact: data[cContact]!,
                                                                                                          cServerTime: data[cServerTime]!,
                                                                                                            cFullName: data[cFullName]!,
                                                                                                               cEmail: data[cEmail]!])
            }else{
              //
            }
        }
    }
    
}
