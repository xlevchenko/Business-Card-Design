//
//  SwiftUIView.swift
//  Olexsii Card
//
//  Created by Алексей Левченко on 12.10.2021.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(width: 320, height: 55)
            .overlay(HStack(alignment: .center, spacing: 15) {
                Image(systemName: imageName)
                    .foregroundColor(.red)
                    .font(.system(size: 25))
                Text(text)
                    .font(.system(size: 20))
            })
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.circle")
            .previewLayout(.sizeThatFits)
    }
}
