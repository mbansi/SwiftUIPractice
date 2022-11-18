//
//  ContentView.swift
//  FirstDemo
//
//  Created by Bansi Mamtora on 14/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    
    var body: some View {
        ZStack {
            Color.white
            VStack {
                HStack {
                    TextField("First Name", text: $firstName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Spacer(minLength: 20)
                    TextField("Last Name", text: $lastName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                }
                TextField("Email", text: $email)
                    .padding(.vertical,10)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Create") {
                    // on click
                }.frame(width: 100,height: 30)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(15)
                .font(.system(size: 15))
            }
            .padding(.horizontal,30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
