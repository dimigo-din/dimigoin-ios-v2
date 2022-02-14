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

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct ContentView: View {
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
        .accentColor(Color.magenta)
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
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(selection == 0 ? Color.magenta : Color.gray)
                                }
                            })
                            Spacer()
                            Button(action: {
                                selection = 1
                            }, label: {
                                VStack(spacing: 0){
                                    Image(selection == 1 ? "dock.notice.enabled" : "dock.notice.disabled")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25, height: 25, alignment: .center)
                                    Text("알림장")
                                        .font(.system(size: 12, weight: .bold))
                                        .foregroundColor(selection == 1 ? Color.magenta : Color.gray)
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
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(selection == 2 ? Color.magenta : Color.gray)
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
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(selection == 3 ? Color.magenta : Color.gray)
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
                                Text("프로필")
                                    .font(.system(size: 12, weight: .bold))
                                    .foregroundColor(selection == 4 ? Color.magenta : Color.gray)
                            }
                        })
                        Spacer()
                    }
                )
        ,alignment: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
