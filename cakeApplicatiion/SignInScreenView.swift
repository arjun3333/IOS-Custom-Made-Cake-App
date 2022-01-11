//
//  SignInScreenView.swift
//  cakeApplication
//
//  Created by Anmol
//

import SwiftUI

struct SignInScreenView: View {
    @State var index = 0
    @State private var name: String = ""
    @State private var number: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
//    @StateObject var loginData: LoginPageModel = LoginPageModel( )
    
    var body: some View {
        
        ZStack {
            Color("BGColor").edgesIgnoringSafeArea(.all)

            VStack (spacing: 0) {
                                
                // Navigation Bar
                NavigationBarScreenView ( )
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top,0)
                    .background(Color("PrimaryColor"))
                Spacer( )

                VStack {
                    Text("Sign In")
                        .font(.largeTitle)
                        .foregroundColor(Color("PrimaryColor"))
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                                        
                    //Name
                    TextField("Enter Your Name", text: $name)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                        
                    //Number
                    TextField("Enter Your Contact Number", text: $number)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    //Email
                    TextField("Enter Your Email", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                    //Passwprd
                    TextField("Enter Your Password", text: $password)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                        .padding(.vertical)
                    
                        .padding(.vertical)

                    NavigationLink(
                        destination: HomeScreenView().navigationBarHidden(true),
                        label: {
                            Text("Create Account")
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
                Divider()
                Spacer()
                Text("You are completely safe.")
                Text("Read our Terms & Conditions.")
                    .foregroundColor(Color("PrimaryColor"))
                Spacer()
                Spacer( )
                
            }
        }
        .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.top))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView( )
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}

