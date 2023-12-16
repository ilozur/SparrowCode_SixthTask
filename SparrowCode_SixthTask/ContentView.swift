//
//  ContentView.swift
//  SparrowCode_SixthTask
//
//  Created by Edmond Podlegaev on 15.12.2023.
//

import SwiftUI

let countOfRectangles: Int = 7

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< countOfRectangles, id: \.self) { _ in
                Button(action: {}, label: {})
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
        }
    }
}
#Preview {
    ContentView()
}
