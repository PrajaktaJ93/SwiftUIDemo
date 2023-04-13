//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Prajakta on 07/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isActive = false
    @State private var isShowAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField(
                    AppStrings.username,
                    text: $username
                ).padding().onAppear() {
                    self.username = ""
                }
                
                SecureField(
                    AppStrings.password,
                    text: $password
                ).padding().onAppear() {
                    self.password = ""
                }
                
                Button(action: {
                    if username != "" && password != "" {
                        isActive = true
                    } else {
                        isShowAlert = true
                    }
                }, label: {
                    Text(AppStrings.login)
                    if isActive {
                        NavigationLink("", destination:  MainPageView(), isActive: $isActive)
                    }
                })
                if isShowAlert {
                    Text(AppStrings.logInValidation).padding(20)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
