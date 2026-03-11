//
//  SideMenuRowView.swift
//  SideMenuTutorial
//
//  Created by Sachin Randive on 10/03/26.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionModel
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        .padding(.leading)
        .frame(height: 44)
    }
}

#Preview {
    SideMenuRowView(option: .dashboard)
}
