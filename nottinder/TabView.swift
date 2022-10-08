//
//  TabView.swift
//  nottinder
//
//  Created by Reza Babaei on 7/16/1401 AP.
//

import SwiftUI


struct TabView: View {
    @State private var isNavigationBarHidden:Bool=true
    @State private var selectedTab = Tabs.FirstTab
    
    
    
    var body: some View {
        
        VStack {
            HStack{
                Spacer()
                Image(systemName: "flame.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height: 30)
                    .foregroundColor(selectedTab == .FirstTab ? Color.red:Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .FirstTab
                    }
                Spacer()
                Image(systemName: "star.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height: 30)
                    .foregroundColor(selectedTab == .SecondTab ? Color.red:Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .SecondTab
                    }
                
                Spacer()
                Image(systemName: "message.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height: 30)
                    .foregroundColor(selectedTab == .ThirdTab ? Color.red:Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .ThirdTab
                    }
                
                Spacer()
                
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height: 30)
                    .foregroundColor(selectedTab == .FourthTab ? Color.red:Color.secondary)
                    .onTapGesture {
                        self.selectedTab = .FourthTab
                    }
                Spacer()
            }
            Spacer()
            if selectedTab == .FirstTab{
                MatchView()
            }else if selectedTab == .SecondTab{
                LikesView()
            }else if selectedTab == .ThirdTab{
                MessagesView()
            }else {
                ProfileView()
            }
            Spacer()
        }
        
        
        
    }
}

enum Tabs{
    case FirstTab
    case SecondTab
    case ThirdTab
    case FourthTab
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
