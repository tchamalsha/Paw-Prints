//
//  LoginView.swift
//  PawPrints
//
//  Created by Tharushi Chamalsha on 2023-11-23.
//

import SwiftUI

struct LoginView: View {
    //MARK: User Details
    @State var emailID: String = ""
    @State var password: String = "" 
    @State var wrongUsername = 0
    @State var wrongPassword = 0
    var body: some View {
        VStack(){
            Image("Paw prints")
                .frame(alignment: .center)
            Text("Login")
                .bold()
                .font(.largeTitle)
            TextField("Username",text: $emailID)
                .padding()
                .frame(width: 300,height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .border(.red,width: CGFloat(wrongUsername))
            SecureField("Password",text: $password)
                .padding()
                .frame(width: 300,height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .border(.red,width: CGFloat(wrongPassword))
            
            Button("Login"){
                
            }
            .bold()
            .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            .frame(width: 150,height: 50)
            .background(Color.theme.primary)
            .foregroundColor(.white)
            .cornerRadius(10)
            Text("Don't have an account?")
            Button("Sign UP"){
                
            }
            .foregroundColor(Color.theme.primary)
        }
    }
}

#Preview {
    LoginView()
}
