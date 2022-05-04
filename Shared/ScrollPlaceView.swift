//
//  ScrollPlaceView.swift
//  dimigoin (iOS)
//
//  Created by 김아인 on 2022/05/04.
//

import SwiftUI

struct ScrollPlaceView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                VStack{
                    Text("학교")
                        .foregroundColor(.c2)
                        .font(.T6)
                    Text("본관")
                        .foregroundColor(.c1)
                        .font(.T5)
                    Image("place.mainbuilding")
                }
                .frame(width: 130, height: 160, alignment: .leading)
                VStack{
                    Text("학교")
                        .foregroundColor(.c2)
                        .font(.T6)
                    Text("본관")
                        .foregroundColor(.c1)
                        .font(.T5)
                }
                .frame(width: 130, height: 160, alignment: .leading)
            }
        }
    }
}

struct ScrollPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollPlaceView()
    }
}
