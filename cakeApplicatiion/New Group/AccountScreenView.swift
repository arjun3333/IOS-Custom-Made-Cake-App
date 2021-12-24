//
//  AccountScreenView.swift
//  cakeApplicatiion
//
//  Created by Kinjal Kunjadiya on 2021-12-19.
//

import SwiftUI

struct AccountScreenView: View {
    
    let cakes = Cake.getAllCakes( )
    @State var selected = 0
//    @State var top = UIApplication.shared.windows.first?.safeAreaInsets.top
    @State private var name: String = ""
    @State private var number: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
//    @StateObject var loginData: LoginPageModel = LoginPageModel( )

    var body: some View {

        VStack(spacing: 0) {
            
            TopBar(selected: $selected)
            
            GeometryReader{_ in
                VStack {
                    
                    if self.selected == 0 {
                        VStack(spacing: 15) {
                        
                                VStack(spacing: 45) {
                                    HStack(spacing: 15) {
                                        Image("cake2")
                                            .resizable( )
                                            .frame(width: 105, height: 105)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                                        VStack (alignment: .leading, spacing: 4){
                                            Text("Black Forest")
                                                .font(.title2)
                                                .foregroundColor(Color("PrimaryColor"))
                                                .fontWeight(.heavy)
                        
                                            Text("1 Item")
                                                .font(.title3)
                                                .foregroundColor(Color("PrimaryColor"))
                        
                                            Text("$200")
                                                .font(.title3)
                                                .foregroundColor(Color("PrimaryColor"))
                                        
                                        }
                                        Spacer(minLength: 0)
                                    } //HStack
                                } //VStack
                                .padding( )
                                .background(Color.white)
                        
                        } //VStack
                        
                    }
                    else if self.selected == 1 {
                        
                        let chunkedCakes = cakes.chunked(2)
                        List {
//                                ForEach(0 ..< chunkedCakes.count) { index in
                            ForEach(0 ..< 3) { index in
                                HStack{
                                        ForEach( chunkedCakes[index]) { cake in
                                            CakeFavouritesCellView(cake: cake)
                                        }
                                    }
                                }
                                .padding(.top, 5)
                        }
                        
                    }
                    else {
                        
                        VStack(alignment: .center) {
                            Text("Login")
                                .font(.largeTitle)
                                .foregroundColor(Color("PrimaryColor"))
                                .fontWeight(.bold)
                                .padding(.bottom, 5)
                                .padding(.top)
                                                
                            //Email
                            TextField("Enter Your Email", text: $email)
                                .font(.title3)
                                .padding()
                                .frame(maxWidth: 400)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                                .padding(.vertical)
                            
                            //Passwprd
                            TextField("Enter Your Password", text: $password)
                                .font(.title3)
                                .padding()
                                .frame(maxWidth: 400)
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
                        
//                            SocalLoginButton(image: Image("apple"), text: Text("Sign in with Apple"))
                            NavigationLink(
                                                            destination: SignInScreenView().navigationBarHidden(true),
                                                            label: {
                                                                Text("Sign Up with Apple")
                                                                    .font(.title3)
                                                                    .fontWeight(.bold)
                                                                    .foregroundColor(.white)
                                                                    .frame(maxWidth: 300)
                                                                    .padding()
                                                                    .background(Color("PrimaryColor"))
                                                                    .cornerRadius(200)
                                                            })
                                                            .navigationBarHidden(true)                        }
                        
                    } // End If
                    
                }
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        .padding(.top, -20)
    }
}

struct AccountScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AccountScreenView( )
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}

struct CakeFavouritesCellView: View {
    
    let cake: Cake
    @State var showModel = false
    
    var body: some View {
        
        VStack(alignment:  .leading) {
            Image(cake.image)
                .resizable( )
            
                .frame(height: 190)
                .padding(.horizontal,5)
            
            VStack(alignment:  .leading) {
                HStack {
                Text(cake.name)
                    .font(.headline.bold( ))
                    .foregroundColor(Color("PrimaryColor"))
                
                    Image(systemName: "star.fill")
                            .foregroundColor(Color("PrimaryColor"))
                            .font(.title3)
                }
            }
            .padding([.leading,  .bottom], 10)
            .padding(.vertical, 15)
            .padding(.top, 5)
        }
        .cornerRadius(20)
        .shadow(color: Color.gray.opacity(0.8) ,radius: 15)
        .onTapGesture {
            self.showModel = true
        }
            .sheet(isPresented: self.$showModel,
                   onDismiss: {
                self.showModel = false
            },
                   content: {
                CakeDetailScreenView(cake: self.cake)
            })
    }
}


class Host: UIHostingController<ContentView> {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
        
    }
    
}

struct TopBar : View {
    
    @Binding var selected : Int

    var body: some View {
        
        VStack(spacing: 2) {

            HStack{
            
                Button(action: {
                    
                    self.selected = 0
                    
                }) {
                        Text("Orders")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 0 ? .yellow : Color.yellow.opacity(0.5))
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.selected = 1
                    
                }) {
                        Text("Favourites")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 1 ? .yellow : Color.yellow.opacity(0.5))
                }
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.selected = 2

                }) {
                        Text("Profile")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 2 ? .yellow : Color.yellow.opacity(0.5))
                }
                                
            }
            .padding(.top)
            
        }
        .padding( )
        .padding(.top, -20)
        .background(Color("PrimaryColor"))
    }
    
}

