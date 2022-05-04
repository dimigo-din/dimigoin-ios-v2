//
//  ContentView.swift
//  Shared
//
//  Created by 김아인 on 2021/12/23.
//

import SwiftUI

extension Color{
    static let point = Color(red: 232 / 255, green: 60 / 255, blue: 119 / 255)
    static let background = Color(red: 242 / 255, green: 243 / 255, blue: 245 / 255)
    static let c1 = Color(red: 80 / 255, green: 89 / 255, blue: 102 / 255)
    static let c2 = Color(red: 177 / 255, green: 184 / 255, blue: 193 / 255)
    static let c3 = Color(red: 210 / 255, green: 214 / 255, blue: 219 / 255)
}

extension Font{
    static let T1 = Font.system(size: 24, weight: .bold)
    static let T2 = Font.system(size: 22, weight: .bold)
    static let T3 = Font.system(size: 18, weight: .bold)
    static let T4 = Font.system(size: 16, weight: .bold)
    static let T5 = Font.system(size: 14, weight: .bold)
    static let T6 = Font.system(size: 12, weight: .bold)
}

class Setting: ObservableObject {
    @Published var displaying: String = "tab"{
        willSet(newVal){
            print(newVal)
            objectWillChange.send()
        }
    }
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
//    @State var settings = Setting().displaying
    @ObservedObject var setting = Setting()
    var body: some View {
        VStack{
            if(setting.displaying == "tab"){
                TabView(selection: $selection){
                    HomeView()
                        .tag(0)
                    MealView()
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
//                HomeView()
            } else if(setting.displaying == "place"){
                SelectPlaceView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
