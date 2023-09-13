import SwiftUI

struct ContentView: View {
  var body: some View {
    GeometryReader { view in
      VStack {
        List (viagens) { viagem in
          VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
              .resizable()
              .frame(height: 125)
            
            HStack {
              Text(viagem.quantidadeDeDias)
              Spacer()
              Text(viagem.valor)
            }
          }
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
