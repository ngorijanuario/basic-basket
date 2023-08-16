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
            
            componentes
                .padding(.bottom, 10)
            
            entradas
                .padding(.top, 60)
            
            
            
        }
       
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}


extension Welcome{
    
    private var componentes: some View{
        VStack(spacing: 25){
            Image("imagem")
                .resizable()
                .frame(width: 300, height: 250)
        }
    }
    
    private var entradas: some View{
        VStack(spacing: 15) {
            Text("Shopping for the basics has never been easier.")
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.255, green: 0.215, blue: 0.0))
            
            Text("From the Cart to Your Home: Buy the Basics Instantly.")
                .foregroundColor(.secondary)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
            
            Button(
                   action: {
                       print("try it now")
                   },
                   label: {
                        Text("try it now")
                            .fontWeight(.bold)
                            .frame(width: 250,height: 50)
                            .foregroundColor(.white)
                            .background(Color(red: 0.255, green: 0.215, blue: 0.0))
                            .clipShape(Capsule())
                }
            )
            
            HStack(alignment: .center){
                Text("I accept the")
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                Link("privacy conditions",
                     destination: URL(string: "https://www.bicuar.ao/privacidade")!)
                .foregroundColor(Color(red: 0.255, green: 0.215, blue: 0.0))
                
            }
            
        }
    }
    
}
