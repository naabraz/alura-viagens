import SwiftUI

struct ContentView: View {
  var body: some View {
    GeometryReader { view in
      VStack {
        VStack {
          Text("alura viagens")
            .foregroundColor(Color.white)
            .font(.custom("Avenir Black", size: 20))
            .padding(.top, 50)
          Text("ESPECIAL")
            .foregroundColor(Color.white)
            .font(.custom("Avenir Book", size: 20))
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30)
          Text("BRASIL")
            .foregroundColor(Color.white)
            .font(.custom("Avenir Black", size: 23))
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30)
        }
        .frame(width: view.size.width, height: 180, alignment: .top)
        .background(Color.purple)
        
        HStack {
          Button(action: {}) {
            Text("Hotéis")
              .font(.custom("Avenir Medium", size: 17))
              .foregroundColor(.white)
          }
          .frame(width: 100, height: 50)
          .background(.blue)
          
          Button(action: {}) {
            Text("Pacotes")
              .font(.custom("Avenir Medium", size: 17))
              .foregroundColor(.white)
          }
          .frame(width: 100, height: 50)
          .background(.orange)
        }
        
        List {
          Text("Rio de Janeiro")
          Text("Ceará")
          Text("Atibaia")
          Text("Pernambuco")
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
