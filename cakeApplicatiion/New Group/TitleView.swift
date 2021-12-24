//
//  TitleView.swift
//  cakeApplicatiion
//
//  Created by arjun on 2021-12-23.
//

import Foundation
import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color("PrimaryColor"))
            
            Spacer( )
            
        } // :HStack
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView( title: "Cake")
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}
