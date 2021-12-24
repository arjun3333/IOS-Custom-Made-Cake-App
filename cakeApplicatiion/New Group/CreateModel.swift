//
//  CreateModel.swift
//  cakeApplicatiion
//
//  Created by Kinjal Kunjadiya on 2021-12-20.
//

import SwiftUI

struct CakeItem: Identifiable {
    
    var id = UUID( ).uuidString
    var title: String
    var image: String
    var name: String
    
}

var cakeItems = [

    CakeItem(title: "Type", image: "cake1", name: "Chocolate Cake"),
    CakeItem(title: "Type", image: "cake2", name: "Chocolate Cake"),
    CakeItem(title: "Type", image: "cake3", name: "Chocolate Cake"),
    CakeItem(title: "Shape", image: "cake4", name: "Chocolate Cake"),
    CakeItem(title: "Shape", image: "cake5", name: "Chocolate Cake"),
    CakeItem(title: "Shape", image: "cake6", name: "Chocolate Cake"),
    CakeItem(title: "Size", image: "cake7", name: "Chocolate Cake"),
    CakeItem(title: "Size", image: "cake8", name: "Chocolate Cake"),
    CakeItem(title: "Size", image: "cake9", name: "Chocolate Cake"),
    CakeItem(title: "Flavor", image: "cake10", name: "Chocolate Cake"),
    CakeItem(title: "Flavor", image: "cake11", name: "Chocolate Cake"),
    CakeItem(title: "Flavor", image: "cake12", name: "Chocolate Cake"),

]

struct CreateModel: Identifiable {
    
    var id =  UUID( ).uuidString
    var createModel : String
    var cakeItems: [CakeItem]
    
}

var cakeTabsItems = [

    CreateModel(createModel: "Type", cakeItems: cakeItems.shuffled( ) ),
    CreateModel(createModel: "Shape", cakeItems: cakeItems.shuffled( ) ),
    CreateModel(createModel: "Size", cakeItems: cakeItems.shuffled( ) ),
    CreateModel(createModel: "Flavor", cakeItems: cakeItems.shuffled( ) ),
    CreateModel(createModel: "Filling", cakeItems: cakeItems.shuffled( ) ),

]

