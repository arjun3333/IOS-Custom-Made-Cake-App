//
//  ContentView.swift
//  cakeApplicatiion
//
//  Created by Kinjal Kunjadiya on 2021-12-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("LightColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("big_logo")
                    Spacer()

                    NavigationLink(
                        destination:
                            DashboardScreenView().navigationBarHidden(true),
                        label: {
                            Text("Welcome")
                                .font(.title3)
                                .fontWeight(.bold)
                               .background(Color("PrimaryColor"))
                                .foregroundColor(Color.white)
                                .padding()
                                .frame(maxWidth: 300)
                                .background(Color("PrimaryColor"))
                                .cornerRadius(200.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                        .navigationBarHidden(true)

                    Spacer( )

                }
                .padding()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( )
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: 300)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(200)
    }
}
