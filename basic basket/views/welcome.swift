//
//  ContentView.swift
//  basic basket
//
//  Created by Ngori Januario on 16/08/23.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        VStack {
                
            entradas
              
            
            
            
        }
       
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}


extension Welcome{
    
    
    private var entradas: some View{
       NavigationView {
            VStack {
                
                Image("imagem")
                    .resizable()
                    .frame(width: 300, height: 250)
                    
                Text("Shopping for the basics has never been easier.")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                    
                Text("From the Cart to Your Home: Buy the Basics Instantly.")
                    .foregroundColor(.secondary)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                NavigationLink(destination: AllScreens() .navigationBarBackButtonHidden(true)) {
                        Text("try it now")
                            .fontWeight(.bold)
                            .frame(width: 250,height: 50)
                            .foregroundColor(.white)
                            .background(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                            .clipShape(Capsule())
                            }
                        }
                
            
            HStack(alignment: .center){
                
                Text("I accept the")
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                Link("privacy conditions",
                     destination: URL(string: "https://www.bicuar.ao/privacidade")!)
                .foregroundColor(Color(hue: 0.115, saturation: 1.0, brightness: 1.0))
                
            }
            
        }
    }
    
}
