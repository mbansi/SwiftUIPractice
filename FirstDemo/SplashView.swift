//
//  SplashView.swift
//  FirstDemo
//
//  Created by Bansi Mamtora on 15/11/22.
//

import SwiftUI

struct SplashView: View {
    @State var isHearted = false
    var body: some View {
        VStack(spacing: 20){
           Spacer()
                .frame(width: 30)
     //           .background(Color.blue)
            VStack {
                Image("DripNoteLogo")
                Button {
                    self.isHearted.toggle()
                } label: {
                    if isHearted {
                        Image(systemName: "heart.fill")
                    } else {
                        Image(systemName: "heart")
                    }
                }
                Text("DRIP NOTE")
                    .kerning(5.0)
                    .foregroundColor(self.isHearted ? Color.red : Color("DripNotePrimaryColor"))
                    .font(.custom("MontserratBold", fixedSize: 50))
            }
   //        .background(Color.green)
            VStack(spacing: 5) {
                Text("Repetition builds brain power.")
                    .font(.custom("MontserratLight", fixedSize: 16))
                Text("Make it easy with automation.")
                 .font(.custom("MontserratLight", fixedSize: 16))
               
            }
      //      .background(Color.green)
            Spacer()
                .frame(width: 30)
        //        .background(Color.blue)
           
            VStack(spacing: 14) {
                Button("SIGN UP") {
                    // action
                }
            
                .filledBackground(color: Color("DripNotePrimaryColor"), textColor: .white)
                Button("LOG IN") {
                    // action
                }
                .filledBackground(color: .white, textColor: Color("DripNotePrimaryColor"))
                Button("FORGOT PASSWORD") {
                    // action
                }
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding()
            }
     //      .background(Color.green)
//            Spacer()
//                .frame(width: 30)
//                .background(Color.blue)
        }
        .padding()
    }
} 

struct CustomButtonModifier: ViewModifier {
    var backgroundColor: Color
    var textColor: Color
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .font(.system(size: 14))
            .foregroundColor(textColor)
            .padding()
            .background(backgroundColor)
            .cornerRadius(30)
            .shadow(radius: 3,x: 0, y: 2)
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

extension View {
    func filledBackground(color: Color, textColor: Color) -> some View {
        modifier(CustomButtonModifier(backgroundColor: color, textColor: textColor))
    }
}
