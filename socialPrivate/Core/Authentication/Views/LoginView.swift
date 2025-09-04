//
//  LoginView.swift
//  socialPrivate
//
//  Created by arefdeveloper on 03/09/25.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("App")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 300)
                    .padding()
                
                VStack{
                    TextField("Enter with your email", text: $email)
                        .autocapitalization(.none)
                        .modifier(SocialTextFieldModifier())
                    SecureField("Enter with your password", text: $password)
                        .modifier(SocialTextFieldModifier())
                }
                NavigationLink{
                    Text("Forgot Password?")
                }label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                        .foregroundColor(.blue)
                        .frame(maxWidth:.infinity , alignment: .trailing)
                }
                Button{
                    
                }label:{
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                        
                }
                Spacer()
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        
                }label: {
                    HStack{
                        Text("Dont have account?")
                        
                        Text ("Sign Up")
                            .fontWeight(.semibold)
                        
                        
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical,16)
            }
            
        }
    }
}

#Preview {
    LoginView()
}
