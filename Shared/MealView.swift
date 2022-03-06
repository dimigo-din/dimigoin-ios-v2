//
//  MealView.swift
//  dimigoin (iOS)
//
//  Created by 김아인 on 2022/03/06.
//

import SwiftUI

struct MealView: View {
    @State private var selection = 0
    private let items: [String] = ["월", "화", "수", "목", "금", "토", "일"]
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text("12월 둘째 주")
                            .font(.T5)
                            .padding(.bottom, 5)
                            .foregroundColor(Color.c2)
                        Text("주간 급식표")
                            .font(.T1)
                    }
                    Spacer()
                }
                .padding(.vertical)
                Picker(selection: $selection, label: Text("")) {
                    ForEach(0..<items.count, id: \.self) { index in
                        Text(self.items[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
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
        }
//        VStack{
//            HStack{
//                VStack(alignment: .leading){
//                    Text("12월 둘째 주")
//                        .font(.T5)
//                        .padding(.bottom, 5)
//                        .foregroundColor(Color.c2)
//                    Text("주간 급식표")
//                        .font(.T1)
//                }
//                Spacer()
//            }
//            .padding(.top)
//            HStack{
//                Button(action: {
//                    print("1")
//                }, label: {
//                    Text("월")
//                })
//                Button(action: {
//                    print("1")
//                }, label: {
//                    Text("화")
//                })
//                Button(action: {
//                    print("1")
//                }, label: {
//                    Text("수")
//                })
//                Button(action: {
//                    print("1")
//                }, label: {
//                    Text("목")
//                })
//                Button(action: {
//                    print("1")
//                }, label: {
//                    Text("금")
//                })
//                Button(action: {
//                    print("1")
//                }, label: {
//                    Text("토")
//                })
//                Button(action: {
//                    print("1")
//                }, label: {
//                    Text("일")
//                })
//            }
//            Spacer()
//        }
//        .padding(.horizontal)
    }
}

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    }
}
