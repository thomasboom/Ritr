//
//  LoginView.swift
//  Writer
//
//  Created by Thomas Boom on 18/07/2020.
//  Copyright © 2020 Thomas Boom. All rights reserved.
//

import Foundation
import SwiftUI

struct LoginView: View{
    @State var Naam: String = ""
    @State var Wachtwoord: String = ""
    
    var body: some View {
        
        NavigationView {
        
        VStack(alignment: .center, spacing: 10.0)
            Text("Ritr")
                .font(.custom("Courier", size: 80))
                .padding(.bottom)
   
            TextField("Naam", text: $Naam)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                

            
            SecureField("Wachtwoord", text: $Wachtwoord)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .padding(.bottom)

            
            Button(
            "Login",
            action: {}
            )
                .foregroundColor(Color.black)
                .frame(width: 100, height: 40)
                .background(Color.gray)

                
                

            Divider()
                .frame(width: 250)
            
            Group    {
                Text("Geen account?")
                    .foregroundColor(.gray)
                    .padding(.top)
                    
                NavigationLink(destination: MaakAccountView()){
                Text("Maak account aan")
                    .multilineTextAlignment(.center)
      
            }
        }
  
    }
    
    
}



//structures



struct SceneDelegate_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
        
    }
}
}
