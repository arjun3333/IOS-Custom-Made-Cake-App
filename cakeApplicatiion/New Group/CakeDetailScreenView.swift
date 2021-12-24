//


import Foundation
//
//  CakeDetailScreenView.swift
//  cakeApplication
//
//  Created by arjun on 2021-12-10.
//

import SwiftUI

struct CakeDetailScreenView: View {
    var cake: Cake
    
    var body: some View {
    
        
        VStack(alignment: .center) {
            Image(cake.image)
                .resizable( )
                .scaledToFit( )
                        
            VStack(alignment:  .leading) {
                Spacer( )

                Text(cake.name)
                    .font(.largeTitle.bold( ))
                    .foregroundColor(Color("PrimaryColor"))

                Spacer( )
                
                Text(cake.description)
                    .font(.title2.bold( ))
                    .foregroundColor(Color("PrimaryColor"))
                
            }
            .padding([.leading, .bottom], 10)
            .padding(.vertical, 5)
            
            VStack {
                NavigationLink(
                    destination:
                        HomeScreenView( ).navigationBarHidden(true),
                    label: {
                        Text("Add To Cart")
                            .font(.title3)
                            .fontWeight(.bold)
                           .background(Color("PrimaryColor"))
                            .foregroundColor(Color.white)
                            .padding( )
                            .frame(maxWidth: 300)
                            .background(Color("PrimaryColor"))
                            .cornerRadius(200.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                            .padding( )
                    })
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination:
                        HomeScreenView( ).navigationBarHidden(true),
                    label: {
                        Text("Add To Favourites")
                            .font(.title3)
                            .fontWeight(.bold)
                           .background(Color("PrimaryColor"))
                            .foregroundColor(Color.white)
                            .padding( )
                            .frame(maxWidth: 300)
                            .background(Color("PrimaryColor"))
                            .cornerRadius(200.0)
                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                            .padding( )
                    })
                    .navigationBarHidden(true)
                
            }

        }
        .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: .infinity,
               alignment: .topLeading)
    }
    
}

struct CakeDetailScreenView_Previews: PreviewProvider {
    static var previews: some View {
        CakeDetailScreenView(cake: Cake(name: "Cake1", image: "cake1", price: 200, description: "This soft and fluffy cake has a delicate crumb that tastes wonderful with creamy buttercream frosting. \nA stick-to-the-back-of-your-fork moist cake.Flavor: This 6-inch birthday cake is filled with confetti sprinkles and has the most unforgettable buttery vanilla flavor."))
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}

