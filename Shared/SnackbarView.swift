//
//  SnackbarView.swift
//  dimigoin (iOS)
//
//  Created by 김아인 on 2022/03/03.
//

import SwiftUI

struct SnackbarView: View {
    @Binding var icon: String
    var body: some View {
        HStack(spacing: 4){
            Image("snackbar." + icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
            Text("내 위치를")
                .font(.system(size: 14, weight: .bold))
            Text("어디로")
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(Color.point)
            Text("변경 완료")
                .font(.system(size: 14, weight: .bold))
        }
            .padding()
            .frame(width: UIScreen.main.bounds.width/1.3, height: 50)
            .background(Color.white)
            .cornerRadius(50)
    }
}
