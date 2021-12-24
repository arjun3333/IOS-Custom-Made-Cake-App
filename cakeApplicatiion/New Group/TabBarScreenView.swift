//
//  TabBarScreenView.swift
//  cakeApplicatiion
//
//  Created by Kinjal Kunjadiya on 2021-12-16.
//

import SwiftUI

struct TabBarScreenView: View {
    
    @Binding var current: String
    var text : String
    var animation : Namespace.ID
    
    var body: some View {

        Button(action: {
            withAnimation{current = text}
        }) {
            VStack(spacing: 5){
                Text(text)
                    .font(.title2)
                    .foregroundColor(current == text ? Color("LightColor") : Color.black.opacity(0.3) )
                    .frame(height: 25)
                
                ZStack {
                    Rectangle( )
                        .fill(Color.clear)
                        .frame(height: 10)
                    
                    if(current == text) {
                        Rectangle( )
                            .fill(Color("LightColor"))
                            .frame(height: 4)
                            .matchedGeometryEffect(id: "tab", in: animation)
                    }
                }
            }
        }
    }
}


