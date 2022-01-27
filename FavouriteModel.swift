//
//  FavouriteModel.swift
//  CakeApp
//
//  Created by 2022M3 on 21/01/22.
//

import Foundation


class FavouriteModel {
    var id: String!
    var image:String!
    var name: String!
    var description: String!
    var price: String!
    var isFav: Bool!
    var email: String!
    
    init(){
        
    }
    
    init(id: String,image:String,name:String,description:String,price:String,email:String,isFav:Bool){
        self.id = id
        self.image = image
        self.name = name
        self.description = description
        self.price = price
        self.isFav = isFav
        self.email = email
    }
}
