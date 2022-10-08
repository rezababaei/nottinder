//
//  ProfileView.swift
//  nottinder
//
//  Created by Reza Babaei on 7/16/1401 AP.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.secondary)
                .edgesIgnoringSafeArea(.all)
            .opacity(0.1)
            Circle()
                .trim(from: 0, to: 0.5)
                .frame(width:1200)
                .foregroundColor(.white)
                .shadow(radius: 10)
                .offset(x:0,y: -210)
            Rectangle()
                .foregroundColor(.white)
                .frame(width:400,height: 400)
                .offset(x:0,y: -150)
            
            VStack{
                Image("profilebg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:190,height: 190)
                    .clipShape(Circle())
                Text("Dustin , 19")
                    .font(.largeTitle)
                
                Text("Some University, Canada")
                    .font(.title2)
                    .frame(width:250,height: 40)
                HStack{
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width:50,height: 50)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                            Image(systemName: "gearshape.fill")
                                .font(.system(size: 28))
                                .foregroundColor(.secondary)
                        }
                        Text("SETTINGS")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                        .frame(width:30)
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width:70,height: 70)
                                .foregroundColor(.white)
                                .shadow(radius: 7)
                            Image(systemName: "camera.fill.badge.ellipsis")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                                .frame(width:80,height: 80)
                                .background(LinearGradient(colors: [.red,.pink], startPoint: .trailing, endPoint: .leading))
                                .clipShape(Circle())
                            
                        }
                        Text("ADD MEDIA")
                            .foregroundColor(.gray)
                    }.offset(x:0,y: 30)
                    Spacer()
                        .frame(width:30)
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width:50,height: 50)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                            Image(systemName: "pencil")
                                .font(.system(size: 28))
                                .foregroundColor(.secondary)
                                
                            
                        }
                        Text("EDIT INFO")
                            .foregroundColor(.gray)
                    }
                    
                }
                Spacer()
                    .frame(height:60)
                VStack{
                    HStack{
                        Image("relogogold")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:40,height: 40)
                        Text("Get nottinder Gold")
                            .font(.system(size: 28))
                            .offset(x:-5,y:5)
                        
                    }
                    Spacer()
                        .frame(height:10)
                    Text("See who dislikes you & more")
                        .font(.system(size: 20))
                    HStack{
                        Circle()
                            .frame(width:8,height: 8)
                            .foregroundColor(.yellow)
                        Circle()
                            .frame(width:8,height: 8)
                            .foregroundColor(.secondary)
                        
                        Circle()
                            .frame(width:8,height: 8)
                            .foregroundColor(.secondary)
                        
                        Circle()
                            .frame(width:8,height: 8)
                            .foregroundColor(.secondary)
                        Circle()
                            .frame(width:8,height: 8)
                            .foregroundColor(.secondary)
                        
                        Circle()
                            .frame(width:8,height: 8)
                            .foregroundColor(.secondary)
                        
                        Circle()
                            .frame(width:8,height: 8)
                            .foregroundColor(.secondary)
                        
                    }
                    Spacer()
                        .frame(height:40)
                    ZStack{
                        RoundedRectangle(cornerRadius: 100)
                            .frame(width:300,height:60)
                            .foregroundColor(.white)
                            .shadow(radius: 7)
                        Text("GET NOTTINDER GOLD")
                            .font(.system(size: 20))
                            .foregroundColor(.yellow)
                        
                    }
                }
            }.offset(x:0,y: 10)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
