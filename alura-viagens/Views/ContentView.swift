import SwiftUI

struct ContentView: View {
  @Environment(\.horizontalSizeClass) var horizontalSizeClass

  var body: some View {
    GeometryReader { view in
      VStack {
        HeaderView()
          .frame(width: view.size.width,
                 height: self.horizontalSizeClass == .compact ? 240 : 340,
                 alignment: .top)
        List (viagens) { viagem in
          CelulaViagemView(viagem: viagem)
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
