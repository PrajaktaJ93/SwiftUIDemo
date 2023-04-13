//
//  MainPageView.swift
//  SwiftUIDemo
//
//  Created by Prajakta on 10/04/23.
//

import SwiftUI

struct MainPageView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                Text(AppStrings.logInSuccessfully).padding()
                Button(action: {
                    self.mode.wrappedValue.dismiss()
                }, label: {
                    Text(AppStrings.logout).padding()
                })
            }
        }.navigationBarHidden(true)
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
