//
//  SignInView.swift
//  nottinder
//
//  Created by Reza Babaei on 7/16/1401 AP.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        ZStack{
            Image("tinder background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                    .frame(height:180)
                HStack{
                    Image("relogo")
                        .resizable()
                        .frame(width:30,height: 40)
                    Image("nottinder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:160,height: 50)
                        .offset(x:-5,y: 10)
                }
                Spacer()
                        .frame(height:50)
                    
                Text("By Tapping create an account and sign in you agree to our terms. learn how we use your Data in our privacy policy and cookies policy")
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Spacer()
                        .frame(height:50)
                
                Image("wapple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:350,height:60)
                
                Image("wfb")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:350,height:60)
                Image("wphone")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:350,height:60)
                
                Text("Trouble Signing in?")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                
            }
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
