//
//  SignupView.swift
//  PawPrints
//
//  Created by Tharushi Chamalsha on 2023-11-23.
//

import SwiftUI

struct SignupView: View {
    //MARK: User Details
    @State var name: String = ""
    @State var emailID: String = ""
    @State var password: String = ""
    @State var petName: String = ""
    @State var petType: String = ""
    @State var bio: String = ""
    @State var userProfilePicData: Data?
 
    var body: some View {
        VStack(){
            
            
            Text("Lets Sign you in")
                .bold()
                .font(.largeTitle)
            
            ZStack{
                if let userProfilePicData,let image = UIImage(data: userProfilePicData){
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                }else{
                    Image("NullProfile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
            }
            .frame(width: 85,height: 85)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .contentShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            TextField("User Name",text: $name)
                .border(1,.gray.opacity(0.5))
                
            TextField("Email",text: $emailID)
                .border(1,.gray.opacity(0.5))
            TextField("Pet Name",text: $petName)
                .border(1,.gray.opacity(0.5))
            TextField("Type: Dog,Cat",text: $petType)
                .border(1,.gray.opacity(0.5))
            TextField("Bio",text: $bio,axis: .vertical)
                .frame(minHeight: 100, alignment: .top)
                .padding(.horizontal,15)
                .padding(.vertical,10)
                .background{
                    RoundedRectangle(cornerRadius: 5,style: .continuous)
                        .stroke(.gray.opacity(0.5),lineWidth: 1)
                }
                .frame(width: 300)
            SecureField("Password",text: $password)
                .border(1,.gray.opacity(0.5))
            
            Button("SignUp"){
                
            }
            .bold()
            .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            .frame(width: 150,height: 50)
            .background(Color.theme.primary)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            
        }.vAlign(.topLeading)
        HStack{
            Text("Already have an account?")
            Button("Login"){
                
            }
            .foregroundColor(Color.theme.primary)
        }
    }
}

#Preview {
    SignupView()
}
