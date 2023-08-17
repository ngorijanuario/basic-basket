//
//  s1.swift
//  basic basket
//
//  Created by Ngori Januario on 17/08/23.
//

import SwiftUI

struct s1: View {
    var body: some View {
        
        VStack {
            HStack{
                Text("Cesta Basíca")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                Spacer()
            }
            ScrollView(.horizontal){
                HStack{
                    Button(
                           action: {
                               print("All features")
                           },
                           label: {
                                Text("All features")
                                    .fontWeight(.bold)
                                    .frame(width: 150,height: 50)
                                    .foregroundColor(.white)
                                    .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0))
                                    .clipShape(Capsule())
                        }
                    )
                    Button(
                           action: {
                               print("Grains and Cereals")
                           },
                           label: {
                                Text("Grains and Cereals")
                                    .fontWeight(.bold)
                                    .frame(width: 150,height: 50)
                                    .foregroundColor(.white)
                                    .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                    .clipShape(Capsule())
                        }
                    )
                    
                    Button(
                           action: {
                               print("Meat and fish")
                           },
                           label: {
                                Text("Meat and fish")
                                    .fontWeight(.bold)
                                    .frame(width: 150,height: 50)
                                    .foregroundColor(.white)
                                    .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                    .clipShape(Capsule())
                        }
                    )
                    
                    Button(
                           action: {
                               print("Vegetables and Greens")
                           },
                           label: {
                                Text("Vegetables and Greens")
                                    .fontWeight(.bold)
                                    .frame(width: 150,height: 50)
                                    .foregroundColor(.white)
                                    .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                    .clipShape(Capsule())
                        }
                    )
                    
                }
                
                
            }
            
            ScrollView(.vertical){
                HStack{
                    VStack{
                        
                        Image("açucar")
                            .resizable()
                            .frame(width: 135, height: 135)
                        Text("600,00kz")
                            .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                        Text("Sugar")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 135.0)
                        
                        Button(
                               action: {
                                   print("Add to Cart")
                               },
                               label: {
                                    Text("Add to Cart")
                                        .fontWeight(.bold)
                                        .frame(width: 150,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                        .clipShape(Capsule())
                            }
                        )
                        
                    }.padding().border(Color(hue: 0.124, saturation: 1.0, brightness: 1.0), width: 2)
                        
                    
                    VStack{
                        
                        Image("fuba")
                            .resizable()
                            .frame(width: 135, height: 135)
                        Text("300,00kz")
                            .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                        Text("Corn meal")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 135.0)
                        
                        Button(
                               action: {
                                   print("Add to Cart")
                               },
                               label: {
                                    Text("Add to Cart")
                                        .fontWeight(.bold)
                                        .frame(width: 150,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                        .clipShape(Capsule())
                            }
                        )
                        
                    }.padding().border(Color(hue: 0.124, saturation: 1.0, brightness: 1.0), width: 2)
                    
                }
                
                HStack{
                    VStack{
                        
                        Image("frango")
                            .resizable()
                            .frame(width: 135, height: 135)
                        Text("1.500,00kz")
                            .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                        Text("Chicken")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 135.0)
                        
                        Button(
                               action: {
                                   print("Add to Cart")
                               },
                               label: {
                                    Text("Add to Cart")
                                        .fontWeight(.bold)
                                        .frame(width: 150,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                        .clipShape(Capsule())
                            }
                        )
                        
                    }.padding().border(Color(hue: 0.124, saturation: 1.0, brightness: 1.0), width: 2)
                    
                    VStack{
                        
                        Image("açucar")
                            .resizable()
                            .frame(width: 135, height: 135)
                        Text("600,00kz")
                            .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                        Text("Sugar")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 135.0)
                        
                        Button(
                               action: {
                                   print("Add to Cart")
                               },
                               label: {
                                    Text("Add to Cart")
                                        .fontWeight(.bold)
                                        .frame(width: 150,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                        .clipShape(Capsule())
                            }
                        )
                        
                    }.padding().border(Color(hue: 0.124, saturation: 1.0, brightness: 1.0), width: 2)
                    
                }
                
                HStack{
                    VStack{
                        
                        Image("açucar")
                            .resizable()
                            .frame(width: 135, height: 135)
                        Text("600,00kz")
                            .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                        Text("Sugar")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 135.0)
                        
                        Button(
                               action: {
                                   print("Add to Cart")
                               },
                               label: {
                                    Text("Add to Cart")
                                        .fontWeight(.bold)
                                        .frame(width: 150,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                        .clipShape(Capsule())
                            }
                        )
                        
                    }.padding().border(Color(hue: 0.124, saturation: 1.0, brightness: 1.0), width: 2)
                    
                    VStack{
                        
                        Image("açucar")
                            .resizable()
                            .frame(width: 135, height: 135)
                        Text("600,00kz")
                            .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                        Text("Sugar")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 135.0)
                        
                        Button(
                               action: {
                                   print("Add to Cart")
                               },
                               label: {
                                    Text("Add to Cart")
                                        .fontWeight(.bold)
                                        .frame(width: 150,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                        .clipShape(Capsule())
                            }
                        )
                        
                    }.padding().border(Color(hue: 0.124, saturation: 1.0, brightness: 1.0), width: 2)
                    
                }
                
                HStack{
                    VStack{
                        
                        Image("açucar")
                            .resizable()
                            .frame(width: 135, height: 135)
                        Text("600,00kz")
                            .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                        Text("Sugar")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 135.0)
                        
                        Button(
                               action: {
                                   print("Add to Cart")
                               },
                               label: {
                                    Text("Add to Cart")
                                        .fontWeight(.bold)
                                        .frame(width: 150,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                        .clipShape(Capsule())
                            }
                        )
                        
                    }.padding().border(Color(hue: 0.124, saturation: 1.0, brightness: 1.0), width: 2)
                    
                    VStack{
                        
                        Image("açucar")
                            .resizable()
                            .frame(width: 135, height: 135)
                        Text("600,00kz")
                            .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                        Text("Sugar")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .frame(width: 135.0)
                        
                        Button(
                               action: {
                                   print("Add to Cart")
                               },
                               label: {
                                    Text("Add to Cart")
                                        .fontWeight(.bold)
                                        .frame(width: 150,height: 50)
                                        .foregroundColor(.white)
                                        .background(Color(hue: 0.115, saturation: 0.979, brightness: 1.0, opacity: 0.379))
                                        .clipShape(Capsule())
                            }
                        )
                        
                    }.padding().border(Color(hue: 0.124, saturation: 1.0, brightness: 1.0), width: 2)
                    
                }
            }
            
            
           
        }
        .padding()
    }
}

struct s1_Previews: PreviewProvider {
    static var previews: some View {
        s1()
    }
}
