import SwiftUI

struct ContentView: View {
  @Environment(\.horizontalSizeClass) var horizontalSizeClass

  var body: some View {
    NavigationView {
      GeometryReader { view in
        VStack {
          HeaderView()
            .frame(width: view.size.width,
                   height: self.horizontalSizeClass == .compact ? 240 : 360,
                   alignment: .top)
          List (viagens) { viagem in
            NavigationLink(destination: MapaView(coordenada: viagem.localizacao)
              .navigationTitle("Localização")) {
              CelulaViagemView(viagem: viagem)
            }
          }
          .navigationTitle("")
        }
      }
    }.navigationViewStyle(StackNavigationViewStyle())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
