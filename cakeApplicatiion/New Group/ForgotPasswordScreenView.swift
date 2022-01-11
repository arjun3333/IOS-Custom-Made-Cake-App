//
//  ForgotPasswordScreenView.swift
//  cakeApplication
//
//  Created by Anmol
//

import SwiftUI

struct ForgotPasswordScreenView: View {
    @State private var name: String = ""
    @State private var number: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
//    @StateObject var loginData: LoginPageModel = LoginPageModel( )
    
    var body: some View {
        ZStack {
            Color("BGColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                VStack {
                    Text("Forgot Password")
                        .font(.largeTitle)
                        .foregroundColor(Color("PrimaryColor"))
                        .fontWeight(.bold)
                        .padding(.bottom, 60)
                                        
                    //Email
                    TextField("Enter Your New Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    //Passwprd
                    TextField("Enter Your Re-Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    NavigationLink(
                        destination: HomeScreenView().navigationBarHidden(true),
                        label: {
                            Text("Submit")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: 300)
                                .padding()
                                .background(Color("PrimaryColor"))
                                .cornerRadius(200)
                        })
                        .navigationBarHidden(true)
                    
                }
                Spacer()
            }
            .padding()
        }
    }
}


struct ForgotPasswordScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordScreenView()
    }
}

