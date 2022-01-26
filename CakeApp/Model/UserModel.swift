//
//  UserModel.swift
//  CakeApp
//
//  Created by 2022M3 on 21/01/22.
//

import Foundation

class UserModel {
    var emailId: String!
    var fullName: String!
    var contactNo:String!
    
    init(emailId:String,fullName:String,contactNo:String){
        self.emailId = emailId
        self.fullName = fullName
        self.contactNo = contactNo
    }
    
    init(){
        
    }
}

