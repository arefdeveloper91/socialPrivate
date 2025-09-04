//
//  RegistrationView.swift
//  socialPrivate
//
//  Created by arefdeveloper on 04/09/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullName = ""
    @State private var userName = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("App")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 300)
                .padding()
            
            VStack{
                TextField("Enter with your email", text: $email)
                    .modifier(SocialTextFieldModifier())
                SecureField("Enter with your password", text: $password)
                    .modifier(SocialTextFieldModifier())
                
                TextField("Enter with fullname", text: $fullName)
                    .modifier(SocialTextFieldModifier())
                
                TextField("Enter with  username", text: $userName)
                    .modifier(SocialTextFieldModifier())
                
            }
            Button{
                dismiss()
            }label:{
                Text("SignUP")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
                    
            }
            .padding(.vertical)
            Spacer()
            
            Divider()
            
            Button{
                
            }label: {
                HStack{
                    Text("Already Account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                    
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical,16)
        }
    }
}

#Preview {
    RegistrationView()
}
