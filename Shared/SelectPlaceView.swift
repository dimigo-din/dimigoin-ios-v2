//
//  SelectPlaceView.swift
//  dimigoin (iOS)
//
//  Created by 김아인 on 2022/02/01.
//

import SwiftUI

struct SelectPlaceView: View {
    var body: some View {
        VStack{
            HStack{
                Image("arrow.left")
                Text("위치 선택")
                    .foregroundColor(.c2)
                    .font(.T1)
            }
            ScrollPlaceView()
        }
    }
}

struct SelectPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        SelectPlaceView()
    }
}
