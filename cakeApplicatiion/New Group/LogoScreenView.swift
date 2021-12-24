//
//  LogoScreenView.swift
//  cakeApp
//
//  Created by Shivanee Patel on 2021-12-09.
//

import SwiftUI

struct LogoScreenView: View {
    var body: some View {
        HStack(spacing: 4 ) {
          Text("Create Your Own Cake")
                .font(.title3)
                .foregroundColor(Color.black)
                .fontWeight(.bold)
        }
    }
}

struct LogoScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LogoScreenView( )
            .previewLayout(.sizeThatFits)
            .padding( )
    }
}
