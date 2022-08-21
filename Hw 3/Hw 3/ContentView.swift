//
//  ContentView.swift
//  Hw 3
//
//  Created by Max will on 8/21/22.
//

import SwiftUI

struct ContentView: View {
   @State var colorOpacity = 0.2
    var body: some View {
        ZStack {
            Color.black.opacity(colorOpacity).ignoresSafeArea()
            VStack {
                List{
                    ForEach(expensesArray){ store in
                        Text("Shop: \(store.Store) \n Paid: \(store.Paid.formatted()) KWD \n Bought: \(store.purchases)")
                            .font(.system(size: 20, weight: .medium, design: .serif))
                        Image("\(store.profileImage)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                    }
                }
                .frame(width: 350, height: 750)
                .cornerRadius(30)
                Slider(value: $colorOpacity, in: 0.0...1)
                    .frame(width: 300, height: 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
