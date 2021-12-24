//
//  NavigationBarScreenView.swift
//  cakeApplication
//
//  Created by Shivanee Patel on 2021-12-09.
//

import SwiftUI

struct NavigationBarScreenView: View {
    var body: some View {

        HStack {
            
            NavigationLink(
                destination:
                    HomeScreenView().navigationBarHidden(true),
                label: {
                    Image("home3")
                        .font(.title2)
                        .foregroundColor(Color.white)
                        .padding()
                        .padding(.vertical)
                })
                .navigationBarHidden(true)
            
            Spacer( )
            Spacer( )
            
            LogoScreenView( )
            
            Spacer( )
            Spacer( )
            Spacer( )
        }
        .padding(.top,20)
        .padding(.bottom,-20)

    }
}

struct NavigationBarScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarScreenView( )
            .previewLayout(.sizeThatFits)
            .padding( )
            .foregroundColor(Color("PrimaryColor"))
    }
}

