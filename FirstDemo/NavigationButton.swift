//
//  NavigationButton.swift
//  FirstDemo
//
//  Created by Bansi Mamtora on 17/11/22.
//

import SwiftUI

struct NavigationButton: View {
    @State var answer = false
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: SplashView(), isActive: $answer, label: {
                           Button(action: {
                               answer = true
                           }, label: {
                               Text("Login")
                           })
                       })
//            VStack {
//                Button {
//                    print("Login".uppercased())
//                } label: {
//                    Text("Login")
//                        .foregroundColor(Color.blue)
//                }
//                NavigationLink(destination: Text("Logged in")) {
//                    Text("Login")
//                        .foregroundColor(Color.blue)
//                }
//            }
            
        }
    }
}
struct NavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationButton()
    }
}
