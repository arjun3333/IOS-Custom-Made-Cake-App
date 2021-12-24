//
//  CreateScreen.swift
//  cakeApplicatiion
//
//  Created by Kinjal Kunjadiya on 2021-12-08.
//

import SwiftUI

struct CreateScreen: View {

    @State var selected = 0
//    @State var top = UIApplication.shared.windows.first?.safeAreaInsets.top
    @State var isSelected: Bool = false
    @State var textMessage: String = "Enter name to be written on the cake"
    @State var savedMessageText: String = ""
    @State var textNote: String = "Write instructions for the Cake Shop. \n E.g. specify decoration items"
    @State var savedNoteText: String = ""
    @State var toggleIsOnPhoto : Bool = false
    @State var toggleIsOnAllergies : Bool = false

    var body: some View {
        VStack(spacing: 0) {
            
            CreateTopBar(selected: $selected)
            
            GeometryReader{_ in
                VStack {
                    
                        Text("Please select appropriate cake options from available choices..!")
                            .fontWeight(.heavy)
                            .font(.title3)
                            .foregroundColor(Color("PrimaryColor"))
                            .frame(maxWidth: .infinity)

                    if self.selected == 0 {
                        VStack(spacing: 5) {
                        
                                // Regular
                                VStack(spacing: 15) {
                                    HStack(spacing: 25) {
                                        Image("regular")
                                            .resizable( )
                                            .frame(width: 50, height: 50)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                                            Text("Regular")
                                                .font(.title3)
                                                .foregroundColor(Color("PrimaryColor"))
                                                .fontWeight(.heavy)

                                        Spacer(minLength: 0)
                                    } //HStack

                                } //VStack
                                .padding( )
                                .background(Color.white)
                            
                            // Gluten Free
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("gluten free")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Gluten Free")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Vegan
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("vegan")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Vegan")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Eggless
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("eggless")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Eggless")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Sugar Free
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("sugar free")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Sugar Free")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Fondant
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("fondant")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Fondant")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                        } //VStack
                        
                        HStack(spacing: 25) {

                            // Previous Button
                            Button(action: {
                                isSelected.toggle( )
                                
                            }, label: {
                                Text("Previous")
                                    .font(.title2)
                                    .foregroundColor(Color("LightColor"))
                                    .frame(width: 150,  height: 65, alignment: .center)
                                    .background(Color("PrimaryColor"))
                                    .cornerRadius(25)
                                
                            })
                            
                            VStack(alignment: .leading, spacing: 50) {
                                
                                // Next Button
                                Button(action: {
                                    isSelected.toggle( )
                                    
                                }, label: {
                                    Text("Continue")
                                        .font(.title2)
                                        .foregroundColor(Color("LightColor"))
                                        .frame(width: 150,  height: 65, alignment: .center)
                                        .background(Color("PrimaryColor"))
                                        .cornerRadius(25)
                                    
                                })
                            }
                        } // HStack
                    }
                    
                    //  -----------------------------------------------------------------
                    else if self.selected == 1 {
                        VStack(spacing: 5) {
                        
                                // Hexagon
                                VStack(spacing: 15) {
                                    HStack(spacing: 25) {
                                        Image("hexagon")
                                            .resizable( )
                                            .frame(width: 50, height: 50)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                                            Text("Hexagon")
                                                .font(.title3)
                                                .foregroundColor(Color("PrimaryColor"))
                                                .fontWeight(.heavy)

                                        Spacer(minLength: 0)
                                    } //HStack

                                } //VStack
                                .padding( )
                                .background(Color.white)
                            
                            // Heart
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("heart")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Heart")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Round
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("round")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Round")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Numeric
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("numeric")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Numeric")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Square
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("square")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Square")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Alphabet
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Image("alphabet")
                                        .resizable( )
                                        .frame(width: 50, height: 50)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                                        Text("Alphabet")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                        } //VStack
                        
                        HStack(spacing: 25) {

                            // Previous Button
                            Button(action: {
                                isSelected.toggle( )
                                
                            }, label: {
                                Text("Previous")
                                    .font(.title2)
                                    .foregroundColor(Color("LightColor"))
                                    .frame(width: 150,  height: 65, alignment: .center)
                                    .background(Color("PrimaryColor"))
                                    .cornerRadius(25)
                                
                            })
                            
                            VStack(alignment: .leading, spacing: 50) {
                                
                                // Next Button
                                Button(action: {
                                    isSelected.toggle( )
                                    
                                }, label: {
                                    Text("Continue")
                                        .font(.title2)
                                        .foregroundColor(Color("LightColor"))
                                        .frame(width: 150,  height: 65, alignment: .center)
                                        .background(Color("PrimaryColor"))
                                        .cornerRadius(25)
                                    
                                })
                            }
                        } // HStack
                    }
                    
                    //  ------------------------------------------------------------------
                    else if self.selected == 2 {
                        
                        VStack(spacing: 5) {
                        
                                // 0.5 lbs
                                VStack(spacing: 15) {
                                    HStack(spacing: 25) {
                                        Text("0.5 lbs")
                                            .font(.title)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)
                        
                                            Text("Serves 2-3")
                                                .font(.title3)
                                                .foregroundColor(Color("PrimaryColor"))
                                                .fontWeight(.heavy)

                                        Spacer(minLength: 0)
                                    } //HStack

                                } //VStack
                                .padding( )
                                .background(Color.white)
                            
                            // 1.0 lbs
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("1.0 lbs")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Serves 4-6")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)
                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // 1.5 lbs
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("1.5 lbs")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Serves 6-8")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)
                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // 2.0 lbs
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("2.0 lbs")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Serves 9-11")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)
                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // 2.5 lbs
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("2.5 lbs")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Serves 12-15")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // 3.0 lbs
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("3.0 lbs")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Serves 15-17")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                        } //VStack
                        
                        HStack(spacing: 25) {

                            // Previous Button
                            Button(action: {
                                isSelected.toggle( )
                                
                            }, label: {
                                Text("Previous")
                                    .font(.title2)
                                    .foregroundColor(Color("LightColor"))
                                    .frame(width: 150,  height: 65, alignment: .center)
                                    .background(Color("PrimaryColor"))
                                    .cornerRadius(25)
                                
                            })
                            
                            VStack(alignment: .leading, spacing: 50) {
                                
                                // Next Button
                                Button(action: {
                                    isSelected.toggle( )
                                    
                                }, label: {
                                    Text("Continue")
                                        .font(.title2)
                                        .foregroundColor(Color("LightColor"))
                                        .frame(width: 150,  height: 65, alignment: .center)
                                        .background(Color("PrimaryColor"))
                                        .cornerRadius(25)
                                    
                                })
                            }
                        } // HStack
                    }
                    
                    // -------------------------------------------------------------------------
                    else if self.selected == 3 {
                        
                        VStack(spacing: 5) {
                        
                                // Almond
                                VStack(spacing: 15) {
                                    HStack(spacing: 25) {
                                        Text("A")
                                            .font(.title)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)
                        
                                            Text("Almond")
                                                .font(.title3)
                                                .foregroundColor(Color("PrimaryColor"))
                                                .fontWeight(.heavy)

                                        Spacer(minLength: 0)
                                    } //HStack

                                } //VStack
                                .padding( )
                                .background(Color.white)
                            
                            // Black Current
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("B")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                                    
                                        Text("Black Current")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            //Butterscotch
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("B")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Butterscotch")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Chocolate
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("C")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Chocolate")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Dark Chocolate
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("D")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                                    
                                        Text("Dark Chocolate")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Kit Kat
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("K")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Kit Kat")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                        } //VStack
                        
                        HStack(spacing: 25) {

                            // Previous Button
                            Button(action: {
                                isSelected.toggle( )
                                
                            }, label: {
                                Text("Previous")
                                    .font(.title2)
                                    .foregroundColor(Color("LightColor"))
                                    .frame(width: 150,  height: 65, alignment: .center)
                                    .background(Color("PrimaryColor"))
                                    .cornerRadius(25)
                                
                            })
                            
                            VStack(alignment: .leading, spacing: 50) {
                                
                                // Next Button
                                Button(action: {
                                    isSelected.toggle( )
                                    
                                }, label: {
                                    Text("Continue")
                                        .font(.title2)
                                        .foregroundColor(Color("LightColor"))
                                        .frame(width: 150,  height: 65, alignment: .center)
                                        .background(Color("PrimaryColor"))
                                        .cornerRadius(25)
                                    
                                })
                            }
                        } // HStack
                    }
                    
                    // ----------------------------------------------------------------------
                    else if self.selected == 4 {
                        
                        VStack(spacing: 5) {
                        
                                // Strawberry
                                VStack(spacing: 15) {
                                    HStack(spacing: 25) {
                                        Text("S")
                                            .font(.title)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)
                                        
                                            Text("Strawberry")
                                                .font(.title3)
                                                .foregroundColor(Color("PrimaryColor"))
                                                .fontWeight(.heavy)

                                        Spacer(minLength: 0)
                                    } //HStack

                                } //VStack
                                .padding( )
                                .background(Color.white)
                            
                            // Oreo Cookie
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("O")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                                    
                                        Text("Oreo Cookie")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Mango
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("M")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                                    
                                        Text("Mango")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Chocolate Rum
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("C")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                                    
                                        Text("Chocolate Rum")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Blackberry
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("B")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                    
                                        Text("Blackberry")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                            // Almonds
                            VStack(spacing: 15) {
                                HStack(spacing: 25) {
                                    Text("A")
                                        .font(.title)
                                        .foregroundColor(Color("PrimaryColor"))
                                        .fontWeight(.heavy)
                                    
                                        Text("Almonds")
                                            .font(.title3)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)

                                    Spacer(minLength: 0)
                                } //HStack

                            } //VStack
                            .padding( )
                            .background(Color.white)
                            
                        } //VStack
                        
                        HStack(spacing: 25) {

                            // Previous Button
                            Button(action: {
                                isSelected.toggle( )
                                
                            }, label: {
                                Text("Previous")
                                    .font(.title2)
                                    .foregroundColor(Color("LightColor"))
                                    .frame(width: 150,  height: 65, alignment: .center)
                                    .background(Color("PrimaryColor"))
                                    .cornerRadius(25)
                                
                            })
                            
                            VStack(alignment: .leading, spacing: 50) {
                                
                                // Next Button
                                Button(action: {
                                    isSelected.toggle( )
                                    
                                }, label: {
                                    Text("Continue")
                                        .font(.title2)
                                        .foregroundColor(Color("LightColor"))
                                        .frame(width: 150,  height: 65, alignment: .center)
                                        .background(Color("PrimaryColor"))
                                        .cornerRadius(25)
                                    
                                })
                            }
                        } // HStack
                    } // End If
                    else {
                                                    
                            VStack(alignment: .leading, spacing: 20){
                                
                                Text("Name on Cake")
                                    .font(.title)
                                    .foregroundColor(Color("PrimaryColor"))
                                    .fontWeight(.heavy)
                                
                                TextEditor(text: $textMessage)
                                    .frame(height: 90)
                                    .foregroundColor(Color("PrimaryColor"))
                                    .cornerRadius(15)
                                    .font(.title3)
                                    .background(Color("PrimaryColor"))
                                
                                Text("Notes for cake Shop")
                                    .font(.title)
                                    .foregroundColor(Color("PrimaryColor"))
                                    .fontWeight(.heavy)
                                
                                TextEditor(text: $textNote)
                                    .frame(height: 120)
                                    .foregroundColor(Color("PrimaryColor"))
                                    .cornerRadius(15)
                                    .font(.title3)
                                    .background(Color("PrimaryColor"))
                                
                                Toggle(
                                    isOn: $toggleIsOnPhoto,
                                    label: {
                                        Text("Add a photo on the Cake")
                                            .font(.title2)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)
                                    })
                                .toggleStyle(SwitchToggleStyle(tint:  Color("PrimaryColor")))
                                    
                                Toggle(
                                    isOn: $toggleIsOnAllergies,
                                    label: {
                                        Text("Do you have allergies?")
                                            .font(.title2)
                                            .foregroundColor(Color("PrimaryColor"))
                                            .fontWeight(.heavy)
                                    })
                                .toggleStyle(SwitchToggleStyle(tint:  Color("PrimaryColor")))
                            
                                
                                HStack(spacing: 25) {

                                    // Previous Button
                                    Button(action: {
                                        isSelected.toggle( )
                                        
                                    }, label: {
                                        Text("Previous")
//                                            .font(.title2)
//                                            .foregroundColor(Color("LightColor"))
//                                            .frame(width: 150,  height: 65, alignment: .center)
//                                            .background(Color("PrimaryColor"))
//                                            .cornerRadius(25)
                                            .font(.title2)
                                            .fontWeight(.bold)
                                           .background(Color("PrimaryColor"))
                                            .foregroundColor(Color("LightColor"))
                                            .padding()
                                            .frame(maxWidth: 200)
                                            .background(Color("PrimaryColor"))
                                            .cornerRadius(500.0)
                                            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                            .padding(.vertical)
                                    })
                                        .padding(.horizontal, 18)
                                    VStack(alignment: .leading, spacing: 50) {
                                        
                                        // Next Button
                                        NavigationLink(
                                            destination:
                                                AccountScreenView( ).navigationBarHidden(true),
                                            label: {
                                                Text("Continue")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                   .background(Color("PrimaryColor"))
                                                    .foregroundColor(Color("LightColor"))
                                                    .padding()
                                                    .frame(maxWidth: 200)
                                                    .background(Color("PrimaryColor"))
                                                    .cornerRadius(500.0)
                                                    .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                                    .padding(.vertical)
                                            })
                                            .navigationBarHidden(true)
                                        }
                                } // HStack
                                
                                Text(savedMessageText)
                                Text(savedNoteText)
                                
                                Spacer( )
                            }
                            .padding( )
                            
                        }
                }
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        .padding(.top, -20)
    }
}

struct CreateScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreateScreen( )
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}

struct CreateTopBar : View {
    
    @Binding var selected : Int

    var body: some View {
        
        VStack(spacing: 2) {

            HStack{
            
                // Type
                Button(action: {
                    
                    self.selected = 0
                    
                }) {
                        Text("Type")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 0 ? .yellow : Color.yellow.opacity(0.5))
                }
                
                Spacer(minLength: 0)
                
                // Shape
                Button(action: {
                    
                    self.selected = 1
                    
                }) {
                        Text("Shape")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 1 ? .yellow : Color.yellow.opacity(0.5))
                }
                
                Spacer(minLength: 0)
                
                //Size
                Button(action: {
                    
                    self.selected = 2

                }) {
                        Text("Size")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 2 ? .yellow : Color.yellow.opacity(0.5))
                }
                
                Spacer(minLength: 0)
                
                // Flavour
                Button(action: {
                    
                    self.selected = 3

                }) {
                        Text("Flavour")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 3 ? .yellow : Color.yellow.opacity(0.5))
                }
                
                Spacer(minLength: 0)
                
                // Filling
                Button(action: {
                    
                    self.selected = 4

                }) {
                        Text("Filling")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 4 ? .yellow : Color.yellow.opacity(0.5))
                }
                       
                
                // Info
                Button(action: {
                    
                    self.selected = 5
                    
                }) {
                        Text("Info")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .foregroundColor(self.selected == 5 ? .yellow: Color.yellow.opacity(0.5))
                }
                
            }
            .padding(.top)
            
        }
        .padding( )
        .padding(.top, -20)
        .background(Color("PrimaryColor"))
    }
    
}

