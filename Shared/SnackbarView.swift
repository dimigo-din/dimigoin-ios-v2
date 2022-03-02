//
//  SnackbarView.swift
//  dimigoin (iOS)
//
//  Created by 김아인 on 2022/03/03.
//

import SwiftUI

struct SnackbarView: View {
    var body: some View {
        HStack(spacing: 4){
            Image("snackbar.change")
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
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(50)
    }
}

struct SnackbarView_Previews: PreviewProvider {
    static var previews: some View {
        SnackbarView()
    }
}
