//
//  ProductModel.swift
//  CakeApp
//
//  Created by Shivanee.
//

import Foundation


class ProductModel {
    var id: String!
    var image:String!
    var name: String!
    var description: String!
    var price: String!
    
    
    init(){
        
    }
    
    init(id: String,image:String,name:String,description:String,price:String){
        self.id = id
        self.image = image
        self.name = name
        self.description = description
        self.price = price
    }
}

