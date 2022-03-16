//
//  ContentView.swift
//  Olexsii Card
//
//  Created by Алексей Левченко on 12.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.33, green: 0.94, blue: 0.77)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("olexsii")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 3))
                Text("Olexsii Levchenko")
                    .font(Font.custom("SignikaNegative-Regular", size: 35))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "+38 (093) 181-**-27", imageName: "phone")
                InfoView(text: "realcarter**@gmail.com", imageName: "envelope")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


