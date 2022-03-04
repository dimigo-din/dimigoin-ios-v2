//
//  MainView.swift
//  dimigoin (iOS)
//
//  Created by 김아인 on 2022/03/03.
//

import SwiftUI

struct MainView: View {
    @State var selection = 0
    var body: some View {
        TabView(selection: $selection){
            HomeView()
                .tag(0)
            NoticeView()
                .tag(1)
            ScheduleView()
                .tag(2)
            SubscriptionView()
                .tag(3)
            ProfileView()
                .tag(4)
        }
        .accentColor(Color.point)
        .overlay(
            Color.white
                .cornerRadius(20, corners: [.topLeft, .topRight])
                .edgesIgnoringSafeArea(.vertical)
                .frame(height: 50)
                .overlay(
                    HStack{
                        Group{
                            Spacer()
                            Button(action: {
                                selection = 0
                            }, label: {
                                VStack(spacing: 0){
                                    Image(selection == 0 ? "dock.home.enabled" : "dock.home.disabled")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25, alignment: .center)
                                    Text("메인")
                                        .font(.T6)
                                        .foregroundColor(selection == 0 ? Color.point : Color.c3)
                                }
                            })
                            Spacer()
                            Button(action: {
                                selection = 1
                            }, label: {
                                VStack(spacing: 0){
                                    Image(selection == 1 ? "dock.meal.enabled" : "dock.meal.disabled")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25, alignment: .center)
                                    Text("급식")
                                        .font(.T6)
                                        .foregroundColor(selection == 1 ? Color.point : Color.c3)
                                }
                            })
                        }
                        Spacer()
                        Button(action: {
                            selection = 2
                        }, label: {
                            VStack(spacing: 0){
                                Image(selection == 2 ? "dock.schedule.enabled" : "dock.schedule.disabled")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25, alignment: .center)
                                Text("일정")
                                    .font(.T6)
                                    .foregroundColor(selection == 2 ? Color.point : Color.c3)
                            }
                        })
                        Spacer()
                        Button(action: {
                            selection = 3
                        }, label: {
                            VStack(spacing: 0){
                                Image(selection == 3 ? "dock.subscription.enabled" : "dock.subscription.disabled")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25, alignment: .center)
                                Text("신청")
                                    .font(.T6)
                                    .foregroundColor(selection == 3 ? Color.point : Color.c3)
                            }
                        })
                        Spacer()
                        Button(action: {
                            selection = 4
                        }, label: {
                            VStack(spacing: 0){
                                Image(selection == 4 ? "dock.profile.enabled" : "dock.profile.disabled")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 25, height: 25, alignment: .center)
                                Text("내정보")
                                    .font(.T6)
                                    .foregroundColor(selection == 4 ? Color.point : Color.c3)
                            }
                        })
                        Spacer()
                    }
                )
        ,alignment: .bottom)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
