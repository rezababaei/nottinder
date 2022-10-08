//
//  CreateAccountView.swift
//  nottinder
//
//  Created by Reza Babaei on 7/16/1401 AP.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var AccountCreated=false
    //either true or false
    
    var body: some View {
        VStack {
            Text("My Number is")
                .font(.system(size: 45))
            Spacer()
                .frame(height:50)
            HStack{
                VStack{
                    Text("In +98")
                    
                    Rectangle()
                        .frame(width:80,height: 2)
                }
                Rectangle()
                    .frame(width:220,height: 2)
                    .offset(x:0,y: 16)
                
            }
            Spacer()
                .frame(height:50)
            
            Text("We will send a text with verification code. message and Date rates may apply. learn what happens when your number changes.")
                .multilineTextAlignment(.leading)
                .frame(width:300)
                .font(.system(size: 15.5))
                .foregroundColor(.secondary)
            
            Spacer()
                .frame(height:50)
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width:300,height: 50)
                    .foregroundColor(.black)
                Button("CONTINUE"){
                    self.AccountCreated.toggle()
                }
                    .foregroundColor(.white)
                    .font(.system(size: 26))
            }
            .alert(isPresented: $AccountCreated){
                Alert(title:Text( "Account Created!"), message: Text("Your Account has been created!"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
