//
//  SlideMenuView.swift
//  SideMenuTutorial
//
//  Created by Sachin Randive on 10/03/26.
//

import SwiftUI

struct SlideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {  isShowing.toggle() }
            }
        }
    }
}

#Preview {
    SlideMenuView(isShowing: .constant(true))
}
