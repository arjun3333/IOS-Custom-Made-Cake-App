//
//  CakeItemScreenView.swift
//  cakeApplication
//
//  Created by arjun on 2021-12-6.
//

import SwiftUI

struct CakeItemScreenView: View {

    let cakes = Cake.getAllCakes( )
    
    var body: some View {
        let chunkedCakes = cakes.chunked(2)
            return List {
                ForEach(0 ..< chunkedCakes.count) { index in
                    HStack{
                        ForEach( chunkedCakes[index]) { cake in
                            CakeCellView(cake: cake)
                        }
                    }
                }
                .padding(.top, 5)
        }
    }
}

struct CakeCellView: View {
    
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
                
                Image(systemName: "star")
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

struct CakeItemScreenView_Previews: PreviewProvider {
    static var previews: some View {
        CakeItemScreenView( )
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}


