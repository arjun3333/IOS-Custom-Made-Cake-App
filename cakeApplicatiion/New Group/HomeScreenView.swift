//
//  HomeScreenView.swift
//  cakeApplication
//
//  Created by shivani on 2021-12-09.
//

import SwiftUI

struct HomeScreenView: View {
        
    @State var index = 0
    
    var body: some View {
                
        ZStack {
            VStack (spacing: 0) {
                
                // Navigation Bar
                NavigationBarScreenView ( )
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top,0)
                    .background(Color("PrimaryColor"))
                                
                Spacer( )
                Spacer( )

                
                if self.index == 0 {
                    // Own Cake Box
                    VStack (spacing: 20) {
                        HStack(alignment: .top) {
                            
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Create Your Own Cake")
                                    .font(.title.bold())
                                    .foregroundColor(Color("PrimaryColor"))
                                
                                Text("Make cakes for your loved once")
                                    .font(.title2.italic())
                                
                                NavigationLink(
                                    destination:
                                        LoginScreenView().navigationBarHidden(true),
                                    label: {
                                        Text("Create")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                           .background(Color("PrimaryColor"))
                                            .foregroundColor(Color.white)
                                            .padding()
                                            .frame(maxWidth: 200)
                                            .background(Color("PrimaryColor"))
                                            .cornerRadius(500.0)
                                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                            .padding(.vertical)
                                    })
                                    .navigationBarHidden(true)
                            } //VStack
                            
                            Spacer(minLength: 8)
                            }
                        }
                        .padding( )
                        .background(Color("LightColor"))
                        .padding(.horizontal,25)
                    
                    Spacer(minLength: 10)
                    
                        // Pre Made Cake
                        VStack (spacing: 20) {
                            HStack(alignment: .top) {
                                
                                VStack(alignment: .leading, spacing: 12) {
                                    Text("Choose Pre Made Cake")
                                        .font(.title.bold())
                                        .foregroundColor(Color("PrimaryColor"))
                                    
                                    Text("Order cakes for your loved once")
                                        .font(.title2.italic())
                                    
                                    NavigationLink(
                                        destination:
                                            CakeItemScreenView( ).navigationBarHidden(true),
                                        label: {
                                            Text("More")
                                                .font(.title2)
                                                .fontWeight(.bold)
                                               .background(Color("PrimaryColor"))
                                                .foregroundColor(Color.white)
                                                .padding()
                                                .frame(maxWidth: 200)
                                                .background(Color("PrimaryColor"))
                                                .cornerRadius(500.0)
                                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                                .padding(.vertical)
                                        })
                                        .navigationBarHidden(true)
                                } //VStack
                                
                                Spacer(minLength: 8)
                                
                            }
                            .padding( )
                            .background(Color("LightColor"))
                            .padding(.horizontal,25)
                        
                            Spacer( )
                    }
                }
                else if self.index == 1 {
                                        
                    CakeItemScreenView( )
                              
//                    LazyVGrid(columns: gridLayout, spacing: 15,  content: {
                            
//                        ForEach(products) { product in
//                            ProductItemView(product: product)
//                        }
                        
//                    } )
                    
                    
//                    ZStack {
//                        VStack(spacing: 0) {
//                            ScrollView {
//                                VStack(spacing: 0) {
//                                    Text("Cake")
//                                    font(.title2.bold())
//                                        .background(Color("PrimaryColor"))
//                                        .foregroundColor(Color.white)
//                                        .padding()
//
//                                }
//                            }
//                        }
//                    }
                                        
                }
               else if self.index == 2 {
                   
                   Color.green.edgesIgnoringSafeArea(.top)
               }
                else {
                    
                    Color.blue.edgesIgnoringSafeArea(.top)
                }
                
//                MenuScreenView( )
                Spacer( )
                
                // Tab Bar
                TabView(index: self.$index )
                
            }
            .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.top))
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView( )
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}
