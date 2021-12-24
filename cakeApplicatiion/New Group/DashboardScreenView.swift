//
//  DashboardScreenView.swift
//  cakeApplication
//
//  Created by Shivanee Patel on 2021-12-10.
//

import SwiftUI

struct DashboardScreenView: View {
    @State var index = 0
    
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
                                    .font(.title2.italic( ))
                                
                                NavigationLink(
                                    destination:
                                        DashboardScreenView( ).navigationBarHidden(true),
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
                                            DashboardScreenView( ).navigationBarHidden(true),
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
                            
//
//                                VStack {
//                                    ScrollView(.horizontal, showsIndicators: false) {
//                                        HStack {
//                                            ForEach(1..<6) { i in
//                                                CardView(cake: "cake\(i)")
//                                                    .padding(6)
//                                            }
//                                        }
//                                    }
//                                }
                    }
                }
                else if self.index == 1 {

                    CakeItemScreenView( )

                }
               else if self.index == 2 {

                   FavouriteScreenView( )
                   
               }
                else if self.index == 3 {
                        
                    AccountScreenView( )
                    
                }
                else {
                        
                    CreateScreen( )
                }
                
                Spacer( )
                
                // Tab Bar
                TabView(index: self.$index )
                    .padding(.bottom,0)
//                Spacer(minLength: 0)

            }
            .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.top))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct DashboardScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreenView( )
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}


struct CardView: View {
    var cake = ""
    var body: some View {
        VStack {
            Image(cake)
        }
        .frame(width: 250, height: 400)
        .cornerRadius(30)
        .shadow(radius: 20)
    }

}

struct Product: Decodable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: String
    let description: String
    let color: [Double]
}

struct TabView : View {
    @Binding var index: Int
    var body: some View {
        
        HStack {
            
            // Home
            Button(action: {
                self.index = 0
            }) {
                Image("home3")
            }
            .foregroundColor(Color("PrimaryColor").opacity(self.index == 0 ? 1 : 0.1) )
            .offset(x: -10)
            Spacer(minLength: 0)
            
            // Pre Made Cake
            Button(action: {
                self.index = 1
            }) {
                Image("search_menu")
            }
            .foregroundColor(Color("PrimaryColor").opacity(self.index == 1 ? 1 : 0.2) )
            Spacer(minLength: 0)

            // Create
            Button(action: {
                self.index = 4
            }) {
                Image("cake_menu").renderingMode(.original)
            }
            .offset(y: -22)
            Spacer(minLength: 0)
            
            // Favourites
            Button(action: {
                self.index = 2
            }) {
                Image("fav_menu")
            }
            .foregroundColor(Color("PrimaryColor").opacity(self.index == 2 ? 1 : 0.2) )
            .offset(x: 10)
            Spacer(minLength: 0)

            // Profile
            Button(action: {
                self.index = 3
            }) {
                Image("account_menu")
            }
            .foregroundColor(Color("PrimaryColor").opacity(self.index == 3 ? 1 : 0.2) )
            .offset(x: 10)
        }
        .padding(.horizontal,45)
        .padding(.top,40)
        .padding(.bottom, 20)
        .background(Color("PrimaryColor"))
        .clipShape(CShape( ))
    }
}

struct CShape : Shape {
    func path(in rect: CGRect) -> Path {
        return Path{path in
            path.move(to: CGPoint(x: 0, y: 25))
            path.addLine(to: CGPoint(x: 0, y: rect.height) )
            path.addLine(to: CGPoint(x: rect.width, y: rect.height) )
            path.addLine(to: CGPoint(x: rect.width, y: 25) )

            path.addArc(center: CGPoint(x: (rect.width / 2) + 4, y: 25), radius: 25, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
        }
    }
    
}


