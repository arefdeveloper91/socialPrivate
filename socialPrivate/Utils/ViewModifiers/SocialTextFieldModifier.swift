//
//  SocialTextFieldModifier.swift
//  socialPrivate
//
//  Created by arefdeveloper on 04/09/25.
//

import SwiftUI

struct SocialTextFieldModifier: ViewModifier {
    func body(content:Content) -> some View{
        content
            .font(.subheadline)
            .padding(22)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
