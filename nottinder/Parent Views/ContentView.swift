//
//  ContentView.swift
//  nottinder
//
//  Created by Reza Babaei on 7/16/1401 AP.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Image("tinder background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer()
                        .frame(height:250)
                    HStack{
                        Image("relogo")
                            .resizable()
                            .frame(width:45,height: 55)
                        Image("nottinder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 190,height: 60)
                            .offset(x: -5, y: 10)
                    }
                    Spacer()
                        .frame(height:50)
                    
                    Text("By Tapping create an account and sign in you agree to our terms. learn how we use your Data in our privacy policy and cookies policy")
                        .lineLimit(3)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    Spacer()
                        .frame(height:50)
                    
                    NavigationLink(destination: CreateAccountView()){
                        Image("create account button")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350, height: 60)
                    }
                    
                    NavigationLink(destination: SignInView()){
                        Image("sign in box")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350, height: 60)
                    }
                    
                    Text("Trouble Signing in?")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    
                    
                        .navigationTitle("")
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
