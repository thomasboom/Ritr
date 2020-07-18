struct MaakAccountView: View{
@State var Naam: String = ""
@State var Wachtwoord: String = ""

  var body: some View {
    
    NavigationView {
    
    VStack {
      Text("Maak een account aan")
        .font(.custom("Courier", size: 80))

        
      TextField("Naam", text: $email)
        .autocapitalization(.none)
        
      SecureField("Wachtwoord", text: $wachtwoord)
        .autocapitalization(.none)
        
      Button(
        "Registreer",
        action: {}
      )

      Divider()

      Text("An account allows to save and access notes across devices.")
        .font(.footnote)
        .foregroundColor(.gray)
      Spacer()
    }
  .padding()
  }
}
}

