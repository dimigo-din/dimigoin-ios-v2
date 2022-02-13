//
//  ContentView.swift
//  Shared
//
//  Created by 김아인 on 2021/12/23.
//

import SwiftUI

extension Color{
    static let magenta = Color("magenta")
    static let background = Color("background")
    static let gray = Color("gray")
    static let darkgray = Color("darkgray")
}

struct ContentView: View {
    @State var selection = 0
    var body: some View {
        TabView(selection: $selection){
            HomeView()
                .tabItem{
                    if(selection == 0){
                        Image("dock.home.enabled")
                    } else{
                        Image("dock.home.disabled")
                    }
                    Text("메인")
                        .bold()
                }.tag(0)
            NoticeView()
                .tabItem{
                    if(selection == 1){
                        Image("dock.notice.enabled")
                    } else{
                        Image("dock.notice.disabled")
                    }
                    Text("알림장")
                        .bold()
                }.tag(1)
            ScheduleView()
                .tabItem{
                    if(selection == 2){
                        Image("dock.schedule.enabled")
                    } else{
                        Image("dock.schedule.disabled")
                    }
                    Text("일정")
                        .bold()
                }.tag(2)
            SubscriptionView()
                .tabItem{
                    if(selection == 3){
                        Image("dock.subscription.enabled")
                    } else{
                        Image("dock.subscription.disabled")
                    }
                    Text("신청")
                        .bold()
                }.tag(3)
            ProfileView()
                .tabItem{
                    if(selection == 4){
                        Image("dock.profile.enabled")
                    } else{
                        Image("dock.profile.disabled")
                    }
                    Text("내정보")
                        .bold()
                }.tag(4)
        }
        .accentColor(Color.magenta)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
