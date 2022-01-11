//
//  LoginScreenView.swift
//  cakeApplication
//
//  Created by Anmol.
//

import SwiftUI

struct LoginScreenView: View {
    
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
                    Text("Login")
                        .font(.largeTitle)
                        .foregroundColor(Color("PrimaryColor"))
                        .fontWeight(.bold)
                        .padding(.bottom, 60)
                                        
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
                    
                    NavigationLink(
                        destination: ForgotPasswordScreenView().navigationBarHidden(true),
                        label: {
                            Text("Forgot Password?")
                                .font(.title3)
                                .fontWeight(.bold)
                                .frame(maxWidth: 300)
                                .padding()
                                .cornerRadius(200)
                                .foregroundColor(Color("PrimaryColor"))

                            
                        })
                        .navigationBarHidden(true)
                    
                    NavigationLink(
                        destination: HomeScreenView().navigationBarHidden(true),
                        label: {
                            Text("Login")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: 300)
                                .padding()
                                .background(Color("PrimaryColor"))
                                .cornerRadius(200)
                        })
                        .navigationBarHidden(true)
                    
                        Text("Don't have an account?")
                            .fontWeight(.bold)
                            .padding(.bottom, 5)
                            .padding(.top,20)
                    

                    NavigationLink(
                        destination: SignInScreenView().navigationBarHidden(true),
                        label: {
                            Text("Sign Up")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: 300)
                                .padding()
                                .background(Color("PrimaryColor"))
                                .cornerRadius(200)
                        })
                        .navigationBarHidden(true)
                    
                    Text("----------Or Login With----------")
                        .fontWeight(.bold)
                        .padding(.bottom, 5)
                        .padding(.top,30)
                        .foregroundColor(Color("PrimaryColor"))
                
//                    SocalLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                    SocalLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                        .padding(.vertical)
                        .frame(maxWidth: 300)
                        .font(.largeTitle)
                        .cornerRadius(200)
                        .foregroundColor(Color("PrimaryColor"))
                        .font(.largeTitle)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}


struct SocalLoginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
    }
}

