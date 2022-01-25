//
//  OrderModel.swift
//  CakeApp
//
//  Created by 2022M3 on 22/01/22.
//

import Foundation

class OrderModel {
    var id: String!
    var image:String!
    var name: String!
    var description: String!
    var price: String!
    var isDeliver: Bool!
    var email: String!
    
    init(){
        
    }
    
    init(id: String,image:String,name:String,description:String,price:String,email:String,isDeliver:Bool){
        self.id = id
        self.image = image
        self.name = name
        self.description = description
        self.price = price
        self.isDeliver = isDeliver
        self.email = email
    }
}
