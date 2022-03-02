//
//  MainView.swift
//  dimigoin (iOS)
//
//  Created by 김아인 on 2022/02/13.
//

import SwiftUI

struct HomeView: View {
    @State private var showDetails: Bool = false
    var body: some View {
        ZStack{
            Color.background
                .ignoresSafeArea()
            VStack{
                HStack{
                    Image("dimigoinlogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 31, height: 30)
                    Spacer()
                    Button(action: {
                        self.showDetails.toggle()
                        print(UIScreen.main.bounds.height)
                        print(UIScreen.main.bounds.height/4)
                    }, label: {
                        Image("bell.disabled")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: .center)
                    })
                }
                .padding()
                VStack{
                    HStack{
                        Text("나의 위치")
                            .font(.system(size: 22, weight: .bold))
                        Spacer()
                        Image("arrow.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 7, height: 12, alignment: .center)
                    }
                    .padding(.bottom, 25)
                    HStack{
                        VStack{
                            Image(systemName: "applelogo")
                                .foregroundColor(Color.point)
                                .font(.system(size: 24))
                                .padding(.bottom, 2)
                            Text("교실")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(Color.point)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "applelogo")
                                .foregroundColor(Color.c3)
                                .font(.system(size: 24))
                                .padding(.bottom, 2)
                            Text("세탁")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(Color.c3)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "applelogo")
                                .foregroundColor(Color.c3)
                                .font(.system(size: 24))
                                .padding(.bottom, 2)
                            Text("동아리")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(Color.c3)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "applelogo")
                                .foregroundColor(Color.c3)
                                .font(.system(size: 24))
                                .padding(.bottom, 2)
                            Text("화장실")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(Color.c3)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "applelogo")
                                .foregroundColor(Color.c3)
                                .font(.system(size: 24))
                                .padding(.bottom, 2)
                            Text("기타")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(Color.c3)
                        }
                    }
                    .padding(.bottom, 25)
                    HStack{
                        Text("나의 위치는 현재")
                            .font(.system(size: 14, weight: .bold))
                        Text("3학년 1반")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(Color.point)
                        Text("입니다")
                            .font(.system(size: 14, weight: .bold))
                    }
                }
                .padding(25)
                .background(Color.white)
                .cornerRadius(20)
                .padding(.bottom, 15)
                VStack{
                    HStack{
                        Text("오늘의 급식")
                            .font(.system(size: 22, weight: .bold))
                        Spacer()
                        Image("arrow.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 7, height: 12, alignment: .center)
                    }
                    .padding(.bottom, 25)
                    HStack(alignment: .top){
                        Spacer()
                        VStack(spacing: 6){
                            Text("아침")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color.point)
                            Image(systemName: "circle.fill")
                                .foregroundColor(Color.point)
                                .font(.system(size: 4))
                        }
                        Spacer()
                        VStack{
                            Text("점심")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color.c3)
                        }
                        Spacer()
                        VStack{
                            Text("저녁")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(Color.c3)
                        }
                        Spacer()
                    }
                    .padding(.bottom, 25)
                    Text("현미밥 | 얼큰김칫국 | 토마토달걀볶음 | 호박버섯볶음 | 깍두기 | 베이컨 | 완제김 | 스트링치즈 | 모닝빵미니버거 | 포도주스")
                        .lineSpacing(10)
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color.c2)
                        .padding(.bottom, 25)
                    HStack{
                        Text("우리 반의 아침 급식 시간은")
                            .font(.system(size: 14, weight: .bold))
                        Text("오전 7:10")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(Color.point)
                        Text("입니다")
                            .font(.system(size: 14, weight: .bold))
                    }
                }
                .padding(25)
                .background(Color.white)
                .cornerRadius(20)
                Spacer()
            }
            .padding(.horizontal, 20)
            SnackbarView()
                .offset(y: self.showDetails ? -UIScreen.main.bounds.height/2.5 : -UIScreen.main.bounds.height)
                .animation(.interpolatingSpring(mass: 0.3, stiffness: 50, damping: 10, initialVelocity: 0))
        }
        .onChange(of: showDetails, perform: { _ in
            let seconds = 5.0
            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                showDetails = false
            }
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
