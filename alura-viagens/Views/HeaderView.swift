import SwiftUI

struct HeaderView: View {
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
  var body: some View {
    GeometryReader { view in
      VStack {
        VStack {
          Text("alura viagens")
            .foregroundColor(Color.white)
            .font(.custom("Avenir Black",
                          size: self.horizontalSizeClass == .compact ? 20 : 30))
            .padding(.top, self.horizontalSizeClass == .compact ? 50 : 90)
          Text("ESPECIAL")
            .foregroundColor(Color.white)
            .font(.custom("Avenir Book",
                          size: self.horizontalSizeClass == .compact ? 20 : 30))
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30)
          Text("BRASIL")
            .foregroundColor(Color.white)
            .font(.custom("Avenir Black",
                          size: self.horizontalSizeClass == .compact ? 23 : 33))
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 30)
        }
        .frame(width: view.size.width,
               height: self.horizontalSizeClass == .compact ? 200 : 310,
               alignment: .top)
          .background(Color.purple)
          
        HStack {
          Button(action: {}) {
            Text("Hotéis")
              .font(.custom("Avenir Medium",
                            size: self.horizontalSizeClass == .compact ? 17 : 24))
              .foregroundColor(.white)
          }
            .frame(width: self.horizontalSizeClass == .compact ? 100 : 150,
                   height: self.horizontalSizeClass == .compact ? 50 : 75)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.blue, lineWidth: 10))
            .background(.blue)
            .offset(x: self.horizontalSizeClass == .compact ? 50 : view.size.width / 4)
            
          Spacer()
            
          Button(action: {}) {
            Text("Pacotes")
              .font(.custom("Avenir Medium",
                            size: self.horizontalSizeClass == .compact ? 17 : 24))
              .foregroundColor(.white)
          }
          .frame(width: self.horizontalSizeClass == .compact ? 100 : 150,
                 height: self.horizontalSizeClass == .compact ? 50 : 75)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.orange, lineWidth: 10))
            .background(.orange)
            .offset(x: self.horizontalSizeClass == .compact ? -50 : -view.size.width / 4)
        }
        .offset(y: self.horizontalSizeClass == .compact ? -35 : -47.5)
      }
    }
  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      HeaderView()
        .environment(\.horizontalSizeClass, .compact)
        .previewLayout(.fixed(width: 400, height: 240))
      
      HeaderView()
        .environment(\.horizontalSizeClass, .compact)
        .previewLayout(.fixed(width: 835, height: 310))
    }
  }
}
